+++
title = "Guidelines"
sort_by = "weight"
date = 2022-01-17
weight = 50
+++

# Tooling and library guidelines

## Goals

### Consistency

We want to ensure consistency in the tools and libraries used for the
[PeopleForBikes] projects.

Ideally a contributor working on one project should be familiar enough with the
tools and libraries to be able to fix bugs or implement features in another one.

### Removing choice fatigue

We aim at preventing choice fatigue by working with tools and libraries that we
already battle tested.

For instance a contributor looking to implement some logging in a new project
should not spend a day or two researching and evaluating libraries, but should
instead refer to this guide to pick the one we recommend.

### Limiting dependency proliferation

Limiting the amount of third-party software you rely on reduces the surface of
attacks you may be vulnerable to.

Here as an example, are just a couple of impactful events that happen within
recent years:

- [Malicious code found in npm package event-stream](https://snyk.io/blog/malicious-code-found-in-npm-package-event-stream/)
- [Open Source Developer Intentionally Corrupts NPM Libraries](https://www.cpomagazine.com/cyber-security/open-source-developer-intentionally-corrupts-npm-libraries-suspected-hack-turns-out-to-be-mischief/)
- [GitHub Confirms Another Major NPM Security Defect](https://www.securityweek.com/github-confirms-another-major-npm-security-defect)

## Languages

Like dependencies, we try to reduce the amount of general-purpose programming
languages we use for [PeopleForBikes] projects, therefore we decided to only
adopt [Rust] and [Python].

They are respectively used for the following use cases:

- Projects dealing with data science must be written in Python.
- All other projects must be written in Rust.

## General Concepts

These are general concepts that we attempt to abide to in the [PeopleForBikes]
projects.

- Recommended libraries are not set in stone
  - Possible to add libraries if they meet pre-defined criteria
    - Active project
      - Response to issues, PR within a reasonable timeframe (1-2 weeks)
      - At least one commit within the past 6 months
    - No known vulnerabilities
    - Well enough documented
      - i.e. no tribal knowledge required to use them
    - Solve a problem
  - Replacing/Removing a library is possible too
    - Propose a new valid alternative
    - Propose a replacement and/or deprecation strategy
      - e.g. not all projects need to migrate, only new and very active ones
- Use linters with default configurations
  - Unless there is an absolute need for a change

## Python

### Project management

- [poetry]: Python project management de facto standard
- [invoke]: Pure python task runner

### Poetry settings

Each project must create a local virtual environment at its root :

```bash
poetry config virtualenvs.in-project true --local
```

### pyproject.toml

Describes special sections to add to the `pyproject.toml` configuration file.

#### coverage

Leaves some files out the measurements.

```toml
[tool.coverage.run]
omit = ["*/__init__.py"]
```

#### isort

Enables the compatibility with black and ensure each import has its own line.

```toml
[tool.isort]
profile = "black"
force_single_line = "true"
```

#### pytest

Removes the warnings, configures the code coverage report and run the doctests
with [xdoctest].

```toml
[tool.pytest.ini_options]
minversion = "6.0"
addopts = "-p no:warnings --cov-report term-missing --cov-report html --xdoctest"
```

### Initialization

To quickly start a project, run the following commands:

```bash
POETRY_PROJECT=my-project
poetry new ${POETRY_PROJECT}
cd ${POETRY_PROJECT}
poetry add -D \
  black \
  bpython \
  flake8 \
  furo\
  invoke \
  isort \
  myst-parser \
  pydocstyle \
  pylint \
  pytest \
  pytest-cov \
  pytest-mock \
  pytest-rerunfailures \
  pytest-socket \
  pytest-xdist \
  Sphinx\
  sphinx-autobuild \
  sphinx-copybutton \
  xdoctest
```

### Libraries

#### Production

- [aiohttp]: asynchronous HTTP Client/Server
- [alive-progress]: progress reporting
- [loguru]: logging made (stupidly) simple
- [pydantic]: models, settings and automated serialization/deserialization
- [tenacity]: advanced retry library
- [typer]: CLI made easy

#### Linting

- [black]: the uncompromising Python code formatter
- [flake8]: style guide enforcement
- [isort]: sorts your imports
- [pydocstyle]: ensure compliance with Python docstring conventions
- [pylint]: python linter

#### Docs

- [furo]: a clean customizable Sphinx documentation theme.
- [myst-parser]: extend Sphinx with the power of markdown
- [sphinx]: beautiful documentation made easy
- [sphinx-autobuild]: hot reloading for Sphinx
- [sphinx-copybutton]: s small sphinx extension to add a "copy" button to code
  blocks

#### Testing

- [pytest]: python test framework
- [pytest-cov]: code coverage plugin
- [pytest-mock]: mock plugin
- [pytest-rerunfailures]: retry plugins (used only for integration/feature
  tests)
- [pytest-socket]: prevents all network call from the tests
- [pytest-xdist]: run the unit tests in parallel
- [xdoctest]: better doctest

## Markdown

- [markdownlint]: markdown linter

## Rust

### Libraries

- [axum]: asynchronous HTTP server framework
- [color-eyre]: error report handler
- [clap]: elegant CLI
- [indicatif]: progress reporting
- [reqwest]: asynchronous HTTP client
- [serde]: serialization/deserialization framework
- [seaorm]: async & dynamic ORM
- [tokio]: asynchronous runtime
- [tracing.rs]: a scoped, structured logging and diagnostics system

## Shell

- [shellcheck]: shell linter
- [shfmt]: shell formatter

## SQL

- [sqlfluff]: SQL linter and formatter

## Tooling

- [just]: General purpose task runner

<!-- Dependency links -->

[alive-progress]: https://github.com/rsalmei/alive-progress
[axum]: https://github.com/tokio-rs/axum
[aiohttp]: https://docs.aiohttp.org/en/stable/
[black]: https://github.com/psf/black
[clap]: https://clap.rs/
[color-eyre]: https://github.com/yaahc/color-eyre
[flake8]: https://flake8.pycqa.org/en/latest/
[furo]: https://pradyunsg.me/furo/
[indicatif]: https://github.com/mitsuhiko/indicatif
[invoke]: https://www.pyinvoke.org/
[isort]: https://pycqa.github.io/isort/
[loguru]: https://github.com/Delgan/loguru
[markdownlint]: https://github.com/DavidAnson/markdownlint
[myst-parser]: https://myst-parser.readthedocs.io/en/latest/
[poetry]: https://python-poetry.org/
[pydantic]: https://pydantic-docs.helpmanual.io/
[pydocstyle]: https://www.pydocstyle.org/en/stable/
[pylint]: https://pylint.org/
[pytest-cov]: https://github.com/pytest-dev/pytest-cov
[pytest-mock]: https://github.com/pytest-dev/pytest-mock/
[pytest-rerunfailures]: https://github.com/pytest-dev/pytest-rerunfailures
[pytest-socket]: https://github.com/miketheman/pytest-socket
[pytest-xdist]: https://github.com/pytest-dev/pytest-xdist
[pytest]: https://docs.pytest.org/en/latest/
[reqwest]: https://github.com/seanmonstar/reqwest
[seaorm]: https://www.sea-ql.org/SeaORM/
[serde]: https://serde.rs/
[shellcheck]: https://github.com/koalaman/shellcheck
[shfmt]: https://github.com/mvdan/sh
[sphinx-autobuild]: https://github.com/executablebooks/sphinx-autobuild
[sphinx-copybutton]: https://github.com/executablebooks/sphinx-copybutton
[sphinx]: https://www.sphinx-doc.org/en/master/
[sqlfluff]: https://docs.sqlfluff.com/en/stable/index.html
[tenacity]: https://tenacity.readthedocs.io/en/latest/
[tracing.rs]: https://tracing.rs/tracing/
[tokio]: https://tokio.rs/
[typer]: https://typer.tiangolo.com/
[xdoctest]: https://github.com/Erotemic/xdoctest

<!-- Tooling -->

[just]: https://github.com/casey/just

<!-- General links -->

[peopleforbikes]: https://github.com/PeopleForBikes
[python]: https://www.python.org/
[rust]: https://www.rust-lang.org/
