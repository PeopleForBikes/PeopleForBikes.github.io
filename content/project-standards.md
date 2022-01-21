+++
title = "Project standards"
sort_by = "weight"
date = 2022-01-17
weight = 40
+++

# Project standards

## General recomendations

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
- Developpers must be able to run the tasks locally.
- The CI acts as the source of truth.

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
    - It will end up increasing unit test coverage anywway
- Integration tests
  - Can use network, database, file system, storage, etc.
  - **Are NOT included in the code coverage**
- Coverage
  - Reaching 100% coverage is not the end goal
  - Must never regress
  - Think about your teammates who worked on increasing this coverage
  - Use online services like [coveralls](https://coveralls.io) or
    [codecov](https://codecov.io)
