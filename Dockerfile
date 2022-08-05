# syntax=docker/dockerfile:1.4
FROM python:3.10-slim-bullseye@sha256:2124d4f8ccbd537500de16660a876263949ed9a9627cfb6141f418d36f008e9e
LABEL maintainer="opensource@jonaspammer.at"
LABEL org.opencontainers.source="https://github.com/JonasPammer/cookiecutter-pypackage-test"

### General Python Debian Docker Best-Practice Preperation Steps ###

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -qy update \
    && apt-get -qy upgrade \
    && apt-get -qy install --no-install-recommends apt-utils tini \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create non-root user for security purposes (https://github.com/hexops/dockerfile#run-as-a-non-root-user)
RUN addgroup --gid 10001 --system secureappuser \
    && adduser  --uid 10000 --system --ingroup secureappuser --home /home/secureappuser secureappuser

ENV VIRTUAL_ENV=/app/venv
RUN python3 -m venv "${VIRTUAL_ENV}"
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"

RUN apt-get -qy update \
    && apt-get -qqy install --no-install-recommends python3-wheel \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir wheel \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN chown -R secureappuser:secureappuser /app
USER secureappuser

### Project-Specific Dockerfile Steps ###

WORKDIR /app
COPY . .
RUN python3 -m pip install -r requirements.txt && \
    python3 -m pip install .

### Configure Container Startup Configuration ###

# (Tini allows us to avoid several Docker edge cases,
#  see https://github.com/krallin/tini / https://hynek.me/articles/docker-signals/)
ENTRYPOINT [ "/usr/bin/tini", "--",  "test_application" ]

# Default arguments for the ENTRYPOINT go in CMD (https://github.com/hexops/dockerfile#only-store-arguments-in-cmd)
#CMD ["--foo", "1"]