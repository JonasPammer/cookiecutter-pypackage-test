# syntax=docker/dockerfile:1.4
FROM python:3.11-slim-bullseye@sha256:1d2b7101658e795e4d878d3f54f3354838630e1d16f5868ea18b338c12bb92c9
LABEL maintainer="opensource@jonaspammer.at"
LABEL org.opencontainers.source="https://github.com/JonasPammer/cookiecutter-pypackage-test"

ARG DOCKER_APP_USER=secureappuser
ARG VIRTUAL_ENV=/app/venv

### General Python Debian Docker Best-Practice Preperation Steps ###
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
RUN apt-get -qy update \
    && apt-get -qy upgrade \
    && apt-get -qy install --no-install-recommends apt-utils tini \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apt-get -qy update \
    && apt-get -qqy install --no-install-recommends python3-wheel \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir --upgrade setuptools \
    && python3 -m pip install --no-cache-dir --upgrade wheel \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create non-root user for security purposes
# (https://github.com/hexops/dockerfile#run-as-a-non-root-user)
RUN if [ "${DOCKER_APP_USER}" != "root" ]; then \
        addgroup --gid 10001 --system "${DOCKER_APP_USER}" \
        && adduser --uid 10000 --system --ingroup "${DOCKER_APP_USER}" --home "/home/${DOCKER_APP_USER}" "${DOCKER_APP_USER}"; \
    fi

ENV VIRTUAL_ENV=${VIRTUAL_ENV}
RUN python3 -m venv "${VIRTUAL_ENV}"
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"

RUN chown -R "${DOCKER_APP_USER}:${DOCKER_APP_USER}" /app
USER ${DOCKER_APP_USER}
RUN true \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir --upgrade setuptools \
    && python3 -m pip install --no-cache-dir --upgrade wheel

### Project-Specific Dockerfile Steps ###
WORKDIR /app

COPY --chown="${DOCKER_APP_USER}:${DOCKER_APP_USER}" requirements.txt .
USER ${DOCKER_APP_USER}
RUN python3 -m pip install -r requirements.txt --require-hashes

COPY --chown="${DOCKER_APP_USER}:${DOCKER_APP_USER}" . .
USER ${DOCKER_APP_USER}
RUN python3 -m pip install .


### Configure Container Startup Configuration ###
WORKDIR /app
USER ${DOCKER_APP_USER}

# (Tini allows us to avoid several Docker edge cases,
#  see https://github.com/krallin/tini / https://hynek.me/articles/docker-signals/)
ENTRYPOINT [ "/usr/bin/tini", "--",  "test_application" ]

# Default arguments for the ENTRYPOINT go in CMD (https://github.com/hexops/dockerfile#only-store-arguments-in-cmd)
#CMD ["--foo", "1"]
