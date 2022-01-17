+++
title = "Project standards"
sort_by = "weight"
date = 2022-01-17
weight = 20
+++


# Project standards

* Start designing API specification before implementation (i.e.design first 
    approach)
    * OpenAPI 3+ specification
    * Zalando provides very good [RESTful API Guidelines](https://opensource.zalando.com/restful-api-guidelines/) 
    worth following
* Projects must provide a way to build artifacts using standard tools (i.e. no 
    custom scripts made for a specific machine/environment)
    * a package or binary depending on the language
    * a docker image
* Projects must include a Changelog following the “Keep a Changelog” 
    recommendation (https://keepachangelog.com/en/1.0.0)
* Project must adhere to Semantic Versioning
    * Or Calendar Versioning if it makes more sense.
* Projects must use Issues and Pull Request templates
* Projects must use meaningful labels
* Projects must be documented
* Projects must automate all their maintenance tasks
    * Must ensure reproducibility
    * A Makefile or a package.json at the root of the project is a good example
    of how to automate maintenance tasks. 
    * The commands must be backed by scripts (instead of being written inline).

## CI 

Projects must comply with CI tasks. Developper must be able to run the tasks 
locally. The CI acts as the source of truth.

### Required tasks

* Formatter
* Linters
    * Code
    * Docs
* Static analyzers
* Documentation
* Unit tests
* Feature tests
    * Try to cover 100% of use cases
        * This is more important the unit test coverage
        * It will end up increasing unit test coverage anywway
* Integration tests
    * Can use network, database, file system, storage, etc.
    * Are **not** included in code coverage
* Coverage
    * Reaching 100% coverage is not the end goal
    * Must never regress
    * Think about your teammates who worked on increasing this coverage
    * Use online services like https://coveralls.io or https://codecov.io