+++
title = "Project standards"
sort_by = "weight"
date = 2022-01-17
weight = 40
+++

# Project standards

## General recommendations

- Projects must provide a way to build artifacts using standard tools (i.e. no
  custom scripts made for a specific machine/environment)
  - a package or binary depending on the language
  - a docker image
- Projects must include a Changelog following the
  [Keep a Changelog](https://keepachangelog.com/en/1.0.0) recommendation
- Project must adhere to [Semantic Versioning](https://semver.org/)
  - Or [Calendar Versioning](https://calver.org/) if it makes more sense.
- Projects must use Issues and Pull Request templates
- Projects must use meaningful labels
- Projects must be documented
- Projects must automate all their maintenance tasks
  - Must ensure reproducibility
  - A Makefile, justfile or a package.json at the root of the project is a good
    example of how to automate maintenance tasks.
  - The commands must be backed by scripts (instead of being written inline).
- Start designing API specification before implementation (i.e. design first
  approach)
  - OpenAPI 3+ specification
  - Zalando provides very good
    [RESTful API Guidelines](https://opensource.zalando.com/restful-api-guidelines/)
    worth following

## Continuous Integration

The CI rules:

- Projects must comply with CI task requirements.
- Developers must be able to run the tasks locally.
- The CI acts as the source of truth.

The `PeopleForBikes/.github` repository contains starter workflows that should
be used when creating a project.

### Required tasks

- Formatter
- Linters
  - Code
  - Docs
- Static analyzers
- Documentation
- Unit tests
- Feature tests
  - Try to cover 100% of use cases
    - This is more important than the unit test coverage
    - It will end up increasing unit test coverage anyway
- Integration tests
  - Can use network, database, file system, storage, etc.
  - **Are NOT included in the code coverage**
- Coverage
  - Reaching 100% coverage is not the end goal
  - Must never regress
  - Think about your teammates who worked on increasing this coverage
  - Use online services like [coveralls](https://coveralls.io) or
    [codecov](https://codecov.io)

## Administrative tasks

### Create a new GitHub repository

> **Remark: this operation can only be performed by administrators.**

We recommend using using the [GitHub CLI](https://cli.github.com/) in general as
we find it very convenient, but even if it is not your cup of tea, it should at
least be used to create new repositories with the right parameters from the get
go.

Start by assigning the repository name to the `PFB_REPO` variable:

```bash
export PFB_REPO=my-project
```

Create the repository:

> **Remark: adjust the `--description` and `--gitignore` flags with the
> appropriate values.**

```bash
gh repo create \
  "PeopleForBikes/${PFB_REPO}" \
  --public \
  --clone \
  --license MIT \
  --description "Describe my project in one line." \
  --gitignore Rust
cd "${PFB_REPO}"
```

After that, import the `.github` directory:

```bash
DOT_GITHUB_TMP="$(mktemp -d)/.github"
git clone --depth=1 git@github.com:PeopleForBikes/.github "${DOT_GITHUB_TMP}"
rsync -vrlp --exclude '.git' "${DOT_GITHUB_TMP}" .
```

> **Remark: check the `.github/workflows` folder and remove the workflows that
> do not pertain to the project.**

Then apply the labels with [labelr](https://github.com/rgreinho/labelr-rs):

```bash
labelr --organization PeopleForBikes --sync .github/labels
```

And finally submit the changes:

```bash
git add .
git commit -am "Initial import" -m "Imports project scaffolding."
git push
```
