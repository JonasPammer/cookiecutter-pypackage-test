[![CI Status](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/ci.yml/badge.svg)](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/ci.yml) [![CodeQL Status](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/codeql-analysis.yml) ![Python Versions](https://img.shields.io/pypi/pyversions/test_application.svg)

This project is just an example showcase of my <https://github.com/JonasPammer/cookiecutter-pypackage> project.

# Features

…​

# System Requirements

- Python 3.7 / PyPy 3.7 or above

# Installing

This package is available at [PyPi](https://pypi.org/project/test_application).

I recommend you to install using [pipx](https://github.com/pypa/pipx) - a tool that helps installing and running end-user applications written in Python without worrying about any virtualenv magic:

    $ pipx install test_application

But you can of course also install it using normal pip or in your virtual environment:

    $ python3 -m pip install test_application

# Usage

    $ test_application [--help]

# 🐳 Extra: Run using Docker

[![Docker Workflow Status](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/docker.yml/badge.svg)](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/docker.yml)

This Project also offers a best-practiced Dockerfile to run this package in an ensured-to-be-working environment:

Details in [README_DOCKER](README_DOCKER.adoc).

# 🛃 Security Policy

## ℹ️ Supported Versions

The current major version is supported. **For example**, if the current version is 3.4.1:

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Version</th>
<th style="text-align: left;">Supported</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>v3.4.1</p></td>
<td style="text-align: left;"><p>✅</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>v3.4.x</p></td>
<td style="text-align: left;"><p>✅</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>v3.x.x</p></td>
<td style="text-align: left;"><p>✅</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>v2.x.x</p></td>
<td style="text-align: left;"><p>❌</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>v1.x.x</p></td>
<td style="text-align: left;"><p>❌</p></td>
</tr>
</tbody>
</table>

## 🔥 Reporting a Vulnerability

Please report (suspected) security vulnerabilities to [opensource@jonaspammer.at](<mailto:opensource@jonaspammer.at?body=%23%23%20Severity%0D%0A_One%20of%20Low%2C%20Moderate%2C%20High%2C%20Critical%2C%20or%20%22Asses%20using%20Common%20Weakness%20Enumarator%20found%20in%20Reference%22_%0D%0A%0D%0A%0D%0A%23%23%20CVE%20Identifier%20(https%3A%2F%2Fcve.mitre.org%2Fcve%2Fsearch_cve_list.html)%0D%0ANone%0D%0A%0D%0A%0D%0A%23%23%20Description%0D%0A%0D%0A%0D%0A%0D%0A%23%23%20Reproduction%0D%0A_Step-by-step%20instructions%20to%20reproduce%20the%20issue%20%2F%20Proof-of-concept%20%2F%20Any%20special%20configuration%20needed%20to%20reproduce%20%2F%20Exploit%20Code_%0D%0A%0D%0A%0D%0A%0D%0A%23%23%20Impact%0D%0A_What%20kind%20of%20vulnerability%20is%20it%20(Injection%2C%20XSS%2C%20Overflow%2C%20…​)%3F%20Who%20is%20impacted%3F_%0D%0A%0D%0A%0D%0A%23%23%23%20Patches%0D%0A_Has%20the%20problem%20been%20patched%3F%20What%20versions%3F_%0D%0A%0D%0A%0D%0A%23%23%23%20Workarounds%0D%0A_Is%20there%20a%20way%20for%20the%20users%20to%20fix%20or%20remediate%20the%20vulnerability%20without%20upgrading%3F_%0D%0A%0D%0A%0D%0A%23%23%23%20References%0D%0A_Are%20there%20any%20links%20the%20developer%20or%20users%20can%20visit%20to%20find%20out%20more%3F_%0D%0A%0D%0A%0D%0A>), preferably with a proof of concept.

You may use the following template for your e-mail (text in underscores (`_`) is meant for guidance of filling out the form and can be removed):

    ## Severity
    _One of Low, Moderate, High, Critical, or "Asses using Common Weakness Enumarator found in Reference"_


    ## CVE Identifier (https://cve.mitre.org/cve/search_cve_list.html)
    None


    ## Description



    ## Reproduction
    _Step-by-step instructions to reproduce the issue / Proof-of-concept / Any special configuration needed to reproduce / Exploit Code_



    ## Impact
    _What kind of vulnerability is it (Injection, XSS, Overflow, ...)? Who is impacted?_


    ### Patches
    _Has the problem been patched? What versions?_


    ### Workarounds
    _Is there a way for the users to fix or remediate the vulnerability without upgrading?_


    ### References
    _Are there any links the developer or users can visit to find out more?_

Non-vulnerability related security issues such as great new ideas for security features are welcome on GitHub Issues.

# 📝 Development

![pre-commit](https://img.shields.io/badge/pre—​commit-enabled-brightgreen?logo=pre-commit&logoColor=white) [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/JonasPammer/cookiecutter-pypackage-test/master.svg)](https://results.pre-commit.ci/latest/github/JonasPammer/cookiecutter-pypackage-test/master) [![code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

## 📌 Development Machine Dependencies

- Python 3.7 or greater

or (optional)

- Docker

## 📌 Development Dependencies

Development Dependencies are defined in a [pip requirements file](https://pip.pypa.io/en/stable/user_guide/#requirements-files) named `requirements-dev.txt`. Example Installation Instructions for Linux are shown below:

    # "optional": create a python virtualenv and activate it for the current shell session
    $ python3 -m venv venv
    $ source venv/bin/activate

    (venv)$ python3 -m pip install -r requirements-dev.txt

Installing the package locally from live source itself can be done using the following commands:

    # "optional": ensure it actually works by using previously-pinned versions
    (venv)$ python3 -m pip install -r requirements.txt --require-hashes

    # install package from path in develop mode
    (venv)$ python3 -m pip install -e .

When you alter the package definition (i.e. `setup.cfg`) you need to re-run the install command (e.g. to register new cli scripts).

    (venv)$ python3 -m pip install -e .

### ℹ️ Updating pinned dependencies

When you change the dependencies of the pypackage (in `setup.cfg`) or change one of the `requirements*.in` files you must run the appropriate commands to regenerate their `*.txt` counterparts. The command to run is denoted in form of a comment at the top the respective `requirements*.txt` file, i.e.:

    (venv)$ pip-compile --resolver=backtracking --generate-hashes
    (venv)$ pip-compile --resolver=backtracking requirements-dev.in
    (venv)$ pip-compile --resolver=backtracking requirements-build.in

## 🧪 Testing [![codecov code coverage on master](https://codecov.io/gh/JonasPammer/cookiecutter-pypackage-test/branch/master/graph/badge.svg)](https://codecov.io/gh/JonasPammer/cookiecutter-pypackage-test)

Automatic Tests are run on each Contribution on all major Operating Systems (macOS, Windows, Ubuntu) and Python versions (Python 3.7+) using GitHub Workflows.

In order to run the testsuite locally you need to tell tox (the test runner) which environment (python version - pip version) you want to run as seen in the Examples below:

    # use default python 3 of system
    $ tox -e py3

    # use a specified version of python
    $ tox -e py37

    # implicitly use default python 3 of system, ensuring the use of some fixed old pip version
    $ tox -e pipprevious

    # implicitly use default python 3 of system, ensuring the use of latest published and accessible version of pip
    $ tox -e piplatest

    # implicitly use default python 3 of system, ensuring the use of latest devel version of pip
    $ tox -e pipmain

    # mix and match the above
    $ tox -e py37-piplatest

In order to run the additional dockerfile smoke test simply execute the `docker_smoke_test.py` file as shown below:

    $ python3 docker_smoke_test.py

## 🔢 Versioning

Versions are defined using [Tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging) which start with `v`.

When a new tag is pushed, [a GitHub CI workflow](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/release-to-pypi.yml) (![Release CI](https://github.com/JonasPammer/cookiecutter-pypackage-test/actions/workflows/release-to-pypi.yml/badge.svg)) takes care of building the wheels using [build](https://pypi.org/project/build/) and uploading them to PyPI using [twine](https://pypi.org/project/twine/).

Version Bumps shall be made through the use of [`bump2version`](https://github.com/c4urself/bump2version), e.g.:

    $ bump2version patch
    or
    $ bump2version minor
    or
    $ bump2version major

This tool automatically updates the version string in the required files and creates a generic commit with a matching tag (as configured in `.bumpversion.cfg`).

Do not forget that _just_ git push’ing does not push tags! Use:

    $ git push origin <tag_name>
    or
    $ git push origin $(git describe --match "v")*

## 🍪 CookieCutter

This Project shall be kept in sync with [the CookieCutter it was originally templated from](https://github.com/JonasPammer/cookiecutter-pypackage) using [cruft](https://github.com/cruft/cruft) (if possible) or manual alteration (if needed) to the best extend possible.

> <figure>
> <img src="https://raw.githubusercontent.com/cruft/cruft/master/art/example_update.gif" alt="Official Example Usage of `cruft update`" />
> </figure>

## 🕗 Changelog

When a new tag is pushed, an appropriate GitHub Release will be created by the Repository Maintainer to provide a proper human change log with a title and description.

## ℹ️ General Linting and Styling Conventions

General Linting and Styling Conventions are [**automatically** held up to Standards](https://stackoverflow.blog/2020/07/20/linters-arent-in-your-way-theyre-on-your-side/) by various [`pre-commit`](https://pre-commit.com/) hooks, at least to some extend.

Automatic Execution of pre-commit is done on each Contribution using [`pre-commit.ci`](https://pre-commit.ci/)[\*](#note_pre-commit-ci). Pull Requests even automatically get fixed by the same tool, at least by hooks that automatically alter files.

Not to confuse: Although some pre-commit hooks may be able to warn you about script-analyzed flaws in syntax or even code to some extend (for which reason pre-commit’s hooks are **part of** the test suite), pre-commit itself does not run any real Test Suites. For Information on Testing, see [🧪 Testing ](#testing).

Nevertheless, I recommend you to integrate pre-commit into your local development workflow yourself.

This can be done by cd’ing into the directory of your cloned project and running `pre-commit install`. Doing so will make git run pre-commit checks on every commit you make, aborting the commit themselves if a hook alarm’ed.

You can also, for example, execute pre-commit’s hooks at any time by running `pre-commit run --all-files`.

# 💪 Contributing ![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)

[![Open in Visual Studio Code](https://img.shields.io/static/v1?logo=visualstudiocode&label=&message=Open%20in%20Visual%20Studio%20Code&labelColor=2c2c32&color=007acc&logoColor=007acc)](https://open.vscode.dev/JonasPammer/cookiecutter-pypackage-test)

The following sections are generic in nature and are used to help new contributors. The actual "Development Documentation" of this project is found under [📝 Development](#development).

## 🤝 Preamble

First off, thank you for considering contributing to this Project.

Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalize your pull requests.

## 🍪 CookieCutter

This Project owns many of its files to [the CookieCutter it was originally templated from](https://github.com/JonasPammer/cookiecutter-pypackage).

Please check if the edit you have in mind is actually applicable to the template and if so make an appropriate change there instead. Your change may also be applicable partly to the template as well as partly to something specific to this project, in which case you would be creating multiple PRs.

## 💬 Conventional Commits

A casual contributor does not have to worry about following [_the spec_](https://github.com/JonasPammer/JonasPammer/blob/master/demystifying/conventional_commits.adoc) [_by definition_](https://www.conventionalcommits.org/en/v1.0.0/), as pull requests are being squash merged into one commit in the project. Only core contributors, i.e. those with rights to push to this project’s branches, must follow it (e.g. to allow for automatic version determination and changelog generation to work).

## 🚀 Getting Started

Contributions are made to this repo via Issues and Pull Requests (PRs). A few general guidelines that cover both:

- Search for existing Issues and PRs before creating your own.

- If you’ve never contributed before, see [ the first timer’s guide on Auth0’s blog](https://auth0.com/blog/a-first-timers-guide-to-an-open-source-project/) for resources and tips on how to get started.

### Issues

Issues should be used to report problems, request a new feature, or to discuss potential changes **before** a PR is created. When you [ create a new Issue](https://github.com/JonasPammer/cookiecutter-pypackage-test/issues/new), a template will be loaded that will guide you through collecting and providing the information we need to investigate.

If you find an Issue that addresses the problem you’re having, please add your own reproduction information to the existing issue **rather than creating a new one**. Adding a [reaction](https://github.blog/2016-03-10-add-reactions-to-pull-requests-issues-and-comments/) can also help be indicating to our maintainers that a particular problem is affecting more than just the reporter.

### Pull Requests

PRs to this Project are always welcome and can be a quick way to get your fix or improvement slated for the next release. [In general](https://blog.ploeh.dk/2015/01/15/10-tips-for-better-pull-requests/), PRs should:

- Only fix/add the functionality in question **OR** address wide-spread whitespace/style issues, not both.

- Add unit or integration tests for fixed or changed functionality (if a test suite already exists).

- **Address a single concern**

- **Include documentation** in the repo

- Be accompanied by a complete Pull Request template (loaded automatically when a PR is created).

For changes that address core functionality or would require breaking changes (e.g. a major release), it’s best to open an Issue to discuss your proposal first.

In general, we follow the "fork-and-pull" Git workflow

1.  Fork the repository to your own Github account

2.  Clone the project to your machine

3.  Create a branch locally with a succinct but descriptive name

4.  Commit changes to the branch

5.  Following any formatting and testing guidelines specific to this repo

6.  Push changes to your fork

7.  Open a PR in our repository and follow the PR template so that we can efficiently review the changes.

# 🗒 Changelog

Please refer to the [Release Page of this Repository](https://github.com/JonasPammer/cookiecutter-pypackage-test/releases) for a human changelog of the corresponding [Tags (Versions) of this Project](https://github.com/JonasPammer/cookiecutter-pypackage-test/tags).

Note that this Project adheres to Semantic Versioning. Please report any accidental breaking changes of a minor version update.

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
