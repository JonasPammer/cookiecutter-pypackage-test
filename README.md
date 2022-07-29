[![CI
Status](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/ci.yml/badge.svg)](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/ci.yml)
![Python
Versions](https://img.shields.io/pypi/pyversions/test_application.svg)

A Python Package to do random stuff.

# Features

…​

# System Requirements

- Python 3.7 / PyPy 3.7 or above

# Installing

This package is available at
[PyPi](https://pypi.org/project/test_application).

I recommend you to install using [pipx](https://github.com/pypa/pipx) -
a tool that helps installing and running end-user applications written
in Python without worrying about any virtualenv magic:

    $ pipx install test_application

But you can of course also install it using normal pip or in your
virtual environment:

    $ python3 -m pip install test_application

# Usage

    $ test_application [--help]

# Extra: Run using Docker

[![Docker Workflow
Status](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/docker.yml/badge.svg)](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/docker.yml)

This Project also offers a best-practiced Dockerfile to run this package
in an ensured-to-be-working environment:

Details in [README_DOCKER](README_DOCKER.adoc).

# 📝 Development

![pre-commit](https://img.shields.io/badge/pre—​commit-enabled-brightgreen?logo=pre-commit&logoColor=white)
[![pre-commit.ci
status](https://results.pre-commit.ci/badge/github/JonasPammer/cookiecutter-pypackage-test/master.svg)](https://results.pre-commit.ci/latest/github/JonasPammer/cookiecutter-pypackage-test/master)
[![code style:
black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Conventional
Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

## 📌 Development Machine Dependencies

- Python 3.7 or greater

or (optional)

- Docker

## 📌 Development Dependencies

Development Dependencies are defined in a [pip requirements
file](https://pip.pypa.io/en/stable/user_guide/#requirements-files)
named `requirements-dev.txt`. Example Installation Instructions for
Linux are shown below:

    # "optional": create a python virtualenv and activate it for the current shell session
    $ python3 -m venv venv
    $ source venv/bin/activate

    (venv)$ python3 -m pip install -r requirements-dev.txt

Installing the package locally from live source itself can be done using
the following commands:

    # "optional": ensure it actually works by using previously-pinned versions
    (venv)$ python3 -m pip install -r requirements.txt

    # install package from path in develop mode
    (venv)$ python3 -m pip install -e .

When you alter the package definition (i.e. `setup.cfg`) you need to
re-run the install command (e.g. to register new cli scripts).

    (venv)$ python3 -m pip install -e .

### ℹ️ Manually updating pinned dependencies

pre-commit takes care of updating the "pinned requirement files"
(`requirements*.txt`) when their counterpart definition changes.

You may also run the commands yourself if you like:

    (venv)$ python3 -m pip install pip-tools

    (venv)$ pip-compile
    or/and
    (venv)$ pip-compile requirements-dev.in
    or/and
    (venv)$ pip-compile requirements-build.in

## 🧪 Testing [![codecov code coverage on master](https://codecov.io/gh/JonasPammer/cookiecutter-pypackage-test/branch/master/graph/badge.svg)](https://codecov.io/gh/JonasPammer/cookiecutter-pypackage-test)

Automatic Tests are run on each Contribution on all major Operating
Systems (macOS, Windows, Ubuntu) and Python versions (Python 3.7+) using
GitHub Workflows.

In order to run the testsuite locally you need to tell tox (the test
runner) which environment (python version - pip version) you want to run
as seen in the Examples below:

    # use default python 3 of system
    $ *tox -e py3*

    # use a specified version of python
    $ *tox -e py37*

    # implicitly use default python 3 of system, ensuring the use of some fixed old pip version
    $ *tox -e pipprevious*

    # implicitly use default python 3 of system, ensuring the use of latest published and accessible version of pip
    $ *tox -e piplatest*

    # implicitly use default python 3 of system, ensuring the use of latest devel version of pip
    $ *tox -e pipmain*

    # mix and match the above
    $ *tox -e py37-piplatest*

## 🔢 Versioning

Versions are defined using
[Tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging) which start
with `v`.

When a new tag is pushed, [a GitHub CI
workflow](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/release-to-pypi.yml)
(![Release
CI](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/release-to-pypi.yml/badge.svg))
takes care of building the wheels using
[build](https://pypi.org/project/build/) and uploading them to PyPI
using [twine](https://pypi.org/project/twine/).

Version Bumps shall be made through the use of
[`bump2version`](https://github.com/c4urself/bump2version), e.g.:

    $ bump2version patch
    or
    $ bump2version minor
    or
    $ bump2version major

This tool automatically updates the version string in the required files
and creates a generic commit with a matching tag (as configured in
`.bumpversion.cf`).

Do not forget that _just_ git push’ing does not push tags! Use:

    $ git push origin <tag_name>
    or
    $ git push origin $(git describe --match "v")*

## 🍪 CookieCutter

This Project shall be kept in sync with [the CookieCutter it was
originally templated
from](https://github.com/JonasPammer/cookiecutter-pypackage) using
[cruft](https://github.com/cruft/cruft) (if possible) or manual
alteration (if needed) to the best extend possible.

> ![Official Example Usage of `cruft
update`](https://raw.githubusercontent.com/cruft/cruft/master/art/example_update.gif)

## 🕗 Changelog

When a new tag is pushed, an appropriate GitHub Release will be created
by the Repository Maintainer to provide a proper human change log with a
title and description.

## ℹ️ General Linting and Styling Conventions

General Linting and Styling Conventions are [**automatically** held up
to
Standards](https://stackoverflow.blog/2020/07/20/linters-arent-in-your-way-theyre-on-your-side/)
by various [`pre-commit`](https://pre-commit.com/) hooks, at least to
some extend.

Automatic Execution of pre-commit is done on each Contribution using
[`pre-commit.ci`](https://pre-commit.ci/)[\*](#note_pre-commit-ci). Pull
Requests even automatically get fixed by the same tool, at least by
hooks that automatically alter files.

Not to confuse: Although some pre-commit hooks may be able to warn you
about script-analyzed flaws in syntax or even code to some extend (for
which reason pre-commit’s hooks are **part of** the test suite),
pre-commit itself does not run any real Test Suites. For Information on
Testing, see [🧪 Testing ](#testing).

Nevertheless, I recommend you to integrate pre-commit into your local
development workflow yourself.

This can be done by cd’ing into the directory of your cloned project and
running `pre-commit install`. Doing so will make git run pre-commit
checks on every commit you make, aborting the commit themselves if a
hook alarm’ed.

You can also, for example, execute pre-commit’s hooks at any time by
running `pre-commit run --all-files`.

# 💪 Contributing ![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)

[![Open in Visual Studio
Code](https://img.shields.io/static/v1?logo=visualstudiocode&label=&message=Open%20in%20Visual%20Studio%20Code&labelColor=2c2c32&color=007acc&logoColor=007acc)](https://open.vscode.dev/JonasPammer/cookiecutter-pypackage-test)

The following sections are generic in nature and are used to help new
contributors. The actual "Development Documentation" of this project is
found under [📝 Development](#development).

## 🤝 Preamble

First off, thank you for considering contributing to this Project.

Following these guidelines helps to communicate that you respect the
time of the developers managing and developing this open source project.
In return, they should reciprocate that respect in addressing your
issue, assessing changes, and helping you finalize your pull requests.

## 🍪 CookieCutter

This Project owns many of its files to [the CookieCutter it was
originally templated
from](https://github.com/JonasPammer/cookiecutter-pypackage).

Please check if the edit you have in mind is actually applicable to the
template and if so make an appropriate change there instead. Your change
may also be applicable partly to the template as well as partly to
something specific to this project, in which case you would be creating
multiple PRs.

## 💬 Conventional Commits

A casual contributor does not have to worry about following [_the
spec_](https://github.com/JonasPammer/JonasPammer/blob/master/demystifying/conventional_commits.adoc)
[_by definition_](https://www.conventionalcommits.org/en/v1.0.0/), as
pull requests are being squash merged into one commit in the project.
Only core contributors, i.e. those with rights to push to this project’s
branches, must follow it (e.g. to allow for automatic version
determination and changelog generation to work).

## 🚀 Getting Started

Contributions are made to this repo via Issues and Pull Requests (PRs).
A few general guidelines that cover both:

- Search for existing Issues and PRs before creating your own.

- If you’ve never contributed before, see [ the first timer’s guide on
  Auth0’s
  blog](https://auth0.com/blog/a-first-timers-guide-to-an-open-source-project/)
  for resources and tips on how to get started.

### Issues

Issues should be used to report problems, request a new feature, or to
discuss potential changes **before** a PR is created. When you [ create
a new
Issue](https://github.com/JonasPammer/cookiecutter-pypackage-test/issues/new),
a template will be loaded that will guide you through collecting and
providing the information we need to investigate.

If you find an Issue that addresses the problem you’re having, please
add your own reproduction information to the existing issue **rather
than creating a new one**. Adding a
[reaction](https://github.blog/2016-03-10-add-reactions-to-pull-requests-issues-and-comments/)
can also help be indicating to our maintainers that a particular problem
is affecting more than just the reporter.

### Pull Requests

PRs to this Project are always welcome and can be a quick way to get
your fix or improvement slated for the next release. [In
general](https://blog.ploeh.dk/2015/01/15/10-tips-for-better-pull-requests/),
PRs should:

- Only fix/add the functionality in question **OR** address
  wide-spread whitespace/style issues, not both.

- Add unit or integration tests for fixed or changed functionality (if
  a test suite already exists).

- **Address a single concern**

- **Include documentation** in the repo

- Be accompanied by a complete Pull Request template (loaded
  automatically when a PR is created).

For changes that address core functionality or would require breaking
changes (e.g. a major release), it’s best to open an Issue to discuss
your proposal first.

In general, we follow the "fork-and-pull" Git workflow

1.  Fork the repository to your own Github account

2.  Clone the project to your machine

3.  Create a branch locally with a succinct but descriptive name

4.  Commit changes to the branch

5.  Following any formatting and testing guidelines specific to this
    repo

6.  Push changes to your fork

7.  Open a PR in our repository and follow the PR template so that we
    can efficiently review the changes.

# 🗒 Changelog

Please refer to the [Release Page of this
Repository](https://github.com/JonasPammer/cookiecutter-pypackage-test/releases)
for a human changelog of the corresponding [Tags (Versions) of this
Project](https://github.com/JonasPammer/cookiecutter-pypackage-test/tags).

Note that this Project adheres to Semantic Versioning. Please report any
accidental breaking changes of a minor version update.

# ⚖️ License

**[LICENSE](LICENSE)**

    MIT License

    Copyright (c) 2022, Jonas Pammer

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
