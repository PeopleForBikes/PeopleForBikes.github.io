+++
title = "Standards"
sort_by = "weight"
date = 2022-01-17
weight = 40
+++

# Standards

These standards represent the way of working of the [BNA Mechanics] team.

They aim to create an enjoyable contributing culture, while making it obvious
and natural to build high quality deliverables.

## Behavioral standards

### Culture & Values

- Pass negatives up, positives all around.
- Operate with a self-employed mentality - have agency.
- Strive for quality even in the little things.
- Don't cling on a mistake just because you spent a lot of time making it.

### Collaboration

- We succeed or fail together.
- We should feel empowered to pair with anyone to work across the stack.
- Before writing any code, we should agree on the design & direction of the
  upcoming feature.
- Include our users/consumers when determining our features & requirements.
- Favor cooperative exploration over debate when you can - you can’t learn and
  defend at the same time.

## Operational standards

### Data-driven

- Use data wherever available to make the right choices and inform decisions.
- If we care about something, we should ensure we have a way to measure it.

### Automation

- Strive to automate everything which is automatable.

### Documentation

- Write the appropriate documentation for the work we are doing.
  - README.md, Changelog.md, API docs, General documentation, etc.
- When breaking down work, we should provide a roadmap for what/how we plan to
  iterate to a complete feature.
- When creating external documentation for a consumer of our software, we should
  solicit feedback from them & update accordingly.
- Avoid tribal knowledge.

### Error Handling as a First-Class Citizen

- We should plan for and handle errors early, rather than only coding the "happy
  path".
- We should continually ask "how can this fail?"
- If we don't know the right way to handle the error, we should at least have a
  place in the code where we can come back to in order to handle it properly.
- Maintain a backlog of known issues, and review & prioritize them alongside new
  features.

## Project Standards

### General recommendations

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
  - Non trivial commands must be backed by scripts (instead of being written
    inline).
- Start designing API specification before implementation (i.e. design first
  approach)
  - Use the [OpenAPI 3+ specification](https://swagger.io/specification/)
  - Zalando provides very good
    [RESTful API Guidelines](https://opensource.zalando.com/restful-api-guidelines/)
    worth following

### Continuous Integration

The CI rules:

- Projects must comply with CI task requirements.
- Developers must be able to run the tasks locally.
- The CI acts as the source of truth.
- The master branch must be continually deployable.

The `PeopleForBikes/.github` repository contains starter workflows that should
be used when creating a project.

#### Required tasks

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

### SCM

- Write good commit messages
  - [How to Write a Git Commit Message](https://cbea.ms/git-commit/)
  - [BNA Mechanics Contributing Guidelines](../contributing/#commit-example)

### Testing

- Tests should be considered as production level code.
- Eliminate failing & flaky tests.
- Tests should be run on every PR, automatically.
- We should aim to write unit, integration and end-to-end tests (where it makes
  sense).
- If a PR does not have tests, we should feel empowered to question why.
- When a bug is found , we should aim to add a test that exercises the bug, so
  it does not happen again.
- Use doctest to test the happy path.
  - This will also enhance the quality of the documentation by providing short
    examples to the users.

## Licenses

The [BNA Mechanics] team selected the following licenses to use depending on the
type of work being done:

- [MIT](#software) license to be used for code
- [CC-BY](#content) license to be used for content other than code
  (documentation, media)
- [CC0](#non-substantial-works) license to be used for snippets, data,
  boilerplate
- For something else or special circumstances, open an issue in the specific
  project or contact [the team].

### Software

Default: [MIT]

For most substantial [BNA Mechanics] open source software projects, there's a
simple default answer: [MIT].

[MIT] is the
[most popular license](https://github.com/blog/1964-open-source-license-usage-on-github-com)
for public open source projects on [github]. It has great cultural acceptance
and is simple to understand, use, and comply with:

- Add a `LICENSE.md` file at the root of the project, with the [MIT] license
  text and PeopleForBikes copyright notice: "Copyright (c) 2022 PeopleForBikes".
  When using the [GitHub CLI](#create-a-new-github-repository) to create a new
  project, the file will be automatically added. Otherwise, simply copy the
  license text from <https://choosealicense.com/licenses/mit>
- Keep that `LICENSE.md` file and copyright notice in any modified versions.

If you feel that [MIT] is really the wrong license for a substantial [BNA
Mechanics] open source project, let's talk with [the team].

### Content

Default: [CC-BY-4.0]

Occasionally we publish substantial non-software content (e.g., documentation,
media) that we want to give others permission to copy, modify, and distribute if
they give us credit and don't use our trademarks. That's what [CC-BY-4.0]
allows. It's roughly equivalent to [MIT] in terms of being permissive and having
good cultural acceptance, but is designed for non-software works (e.g., license
notice can be provided with a link rather than including a copy of the license
text).

To use [CC-BY-4.0]:

- In the case an entire repository should be released under [CC-BY-4.0]: add a
  `LICENSE.md` file with the [CC-BY-4.0] license text. It is unlikely you will
  want to do this, and it is not facilitated by the web interface license
  picker. The license text is available at
  <https://creativecommons.org/licenses/by/4.0/legalcode.txt> but check with the
  team to ensure this is what you really want.
- In the case particular files or parts of content (e.g., documentation or a
  media file) should be released under [CC-BY-4.0], note this precisely in the
  repository's `README.md`.
- If the released material is rendered or published, e.g., as or in web pages,
  it can also be useful to include a [CC-BY-4.0] notice there, e.g., "This
  documentation is released under [CC-BY-4.0]", with a link to
  <https://creativecommons.org/licenses/by/4.0/> or the repository
  `README.md#Licenses` depending on the complexity of the situation. Please ask
  the team for help getting it right.
- To use material under [CC-BY-4.0], license notice and attribution must be
  preserved. It can be useful to provide an example of how to do so.

If you feel that [CC-BY-4.0] is really the wrong license for substantial GitHub
open source non-software content, let's talk with [the team].

### Non-substantial works

Default: [CC0-1.0]

[MIT] and [CC-BY-4.0] conditions are easy to comply with, but sometimes projects
are better served by not having any conditions, not even a requirement for
attribution.

[CC0-1.0] waives all copyright restrictions but reserves trademark and patent
rights, making it an easy unconditional license for PeopleForBikes material
when:

- burden to user of maintaining copyright notices forever is large relative to
  incremental value of using licensed material, and
- there is no demonstrable business value from mandating maintenance of
  copyright notices

#### Examples

1. Sample snippets; eg those under <https://developer.github.com/guides/>
2. Starter or other boilerplate material
3. Purely functional configuration with minimal expressivity that we don't think
   is/ought be subject to copyright anyway; add certainty that there are no
   restrictions
4. Data in which there is clearly no demonstrable business value from mandating
   maintenance of copyright notices
5. More substantial code/material alongside/in same repo as one of the above and
   still no demonstrable business value from restrictions; just use an
   unconditional license for more substantial bits to minimize number of
   licenses involved

To use [CC0-1.0]:

- In the case an entire repository should be released under [CC0-1.0]: add a
  `LICENSE.md` file with the [CC0-1.0] license text. You can do this via the web
  interface on [github] (a license picker will automatically appear when you add
  a new file called `LICENSE.md`) or by copying the license text from
  <https://choosealicense.com/licenses/cc0-1.0>
- In the case particular files or parts of content (e.g., code snippets in
  documentation) should be released under [CC0-1.0], note this precisely in the
  repository's `README.md`.
- If the released material is rendered or published, e.g., as or in web pages,
  it can also be useful to include a [CC0-1.0] notice there, e.g., "Code samples
  in this documentation are released under CC0-1.0", with a link to
  <https://creativecommons.org/publicdomain/zero/1.0/> or the repository
  README.md#Licenses depending on the complexity of the situation. Please ask
  the team for help getting it right.
- Note there are zero copyright license requirements when using material
  released under [CC0-1.0], but it is usually best practice to maintain license
  notices and attribution anyway, as you would for [MIT] and [CC-BY] software
  and non-software above.

Have questions about whether what you're working on matches one of the above
example classes and meets the two criteria above, or feel that [CC0-1.0] isn't
the right license for those cases? Let's talk with [the team].

## Naming conventions

### Versioning

- Assets and should be versioned when applicable. For instance, it is common to
  go through several iterations for a `template`. In this case we follow the
  [calver] specification with the `vYY.Minor` scheme, where:

  - The letter "v" (for "version") precedes the scheme
  - `YY` represents the year with 2 digits (e.g.: 22 for 2022)
  - `Minor` represents the iteration number starting at one (1), without
    zero-padding (e.g: 1, 2, 10, etc.)

  - Examples:

    - v21.17
    - v22.4

#### Examples

- template-scorecard-v22.4.svg
- city_ratings_v22.7.csv

### Visual assets

Visual assets should be named in a way where contributors can easily extract the
relevant information directly from the file name itself. There must not be any
complicated nested folder structure necessary.

- The global naming convention must respect the following pattern:

  `<type>-<name>-<description>[-<size>][-<orientation>].<extension>`

- `<type>` must be one of the following:

  - bg (short for background)
  - icon
  - logo
  - template

- Lower case only
- Do not use spaces, use dashes
- `<size>` can be simplified if the asset is a square. E.g. “512” would mean
  “512x512”
  - Images with the `.svg` `<extension>` do not have a size since they can be
    resized at will
- `<orientation>` (or shape) can optionally be added if it provides value

  Valid values are:

  - square
  - stacked
  - horizontal
  - vertical

#### Examples

- logo-bna-full-1015x596.png
- logo-bna-full-dark-white-text-1015×597.png
- logo-pfb-no-text-square.svg

## Administrative tasks

We recommend using the [GitHub CLI](https://cli.github.com/) in general as we
find it very convenient, but even if it is not your cup of tea, it should at
least be used to create new repositories with the right parameters from the get
go.

All the operations can also be performed via the [GitHub] website.

> **Remark: these operations require administrator privileges.**

### Create a new GitHub repository

Start by defining the `PFB` variables:

```bash
export PFB_REPO=my-project
export PFB_REPO_DESCRIPTION="Describe my project in one line."
export PFB_REPO_LANG=<Node,Python,Rust> # Choose the appropriate language
```

Then, depending of the type of project being created, the bootstrap process
varies.

#### Bootstrap a NextJS project

Create the NextJS app:

```bash
npx create-next-app@latest \
  --ts \
  --tailwind \
  --eslint \
  --experimental-app \
  --src-dir \
  --import-alias @/* \
  --use pnpm \
  "${PFB_REPO}"
```

Import the BNA mechanics files:

```bash
cd ${PFB_REPO}
TEMPLATE_GITHUB_TMP="$(mktemp -d)/template"
git clone --depth=1 git@github.com:PeopleForBikes/bna-mechanics-project-template "${TEMPLATE_GITHUB_TMP}"
rsync -vrlp --exclude '.git' "${TEMPLATE_GITHUB_TMP}/" .
echo -e "# ${PFB_REPO}\n\n${PFB_REPO_DESCRIPTION}" > README.md
```

Check the `.github/workflows` folder and remove the workflows that do not belong
to the project.

```bash
git add .
git commit -sam "Import BNA Mechanics files" \
  -m "Imports the BNA Mechanics files from the project template."
```

Configure the GitHub CLI to use SSH:

```bash
gh config set git_protocol ssh -h github.com
```

Create the GitHub repository:

```bash
gh repo create \
  "PeopleForBikes/${PFB_REPO}" \
  --public \
  --description "${PFB_REPO_DESCRIPTION}" \
  --source=. \
  --remote=upstream \
  --push
```

#### Bootstrap a Rust/Python project

Create the GitHub repository:

```bash
gh repo create \
  "PeopleForBikes/${PFB_REPO}" \
  --public \
  --template "PeopleForBikes/bna-mechanics-project-template" \
  --description "${PFB_REPO_DESCRIPTION}"
git clone "git@github.com:PeopleForBikes/${PFB_REPO}"
```

Initialize the project, depending on the programming language:

- Rust: `cargo init`
- Python:
  `poetry init --name "${PFB_REPO}" --description "${PFB_REPO_DESCRIPTION}"`

Add a `README.md` and the appropriate `.gitignore` file:

```bash
cd "${PFB_REPO}"
echo -e "# ${PFB_REPO}\n\n${PFB_REPO_DESCRIPTION}" > README.md
curl https://raw.githubusercontent.com/github/gitignore/main/${PFB_REPO_LANG}.gitignore \
  | sort -u \
  | grep -v -e "^#" \
  | grep -v -e "^$" \
  > .gitignore
```

Then submit the changes:

```bash
git add .
git commit -sam "Initial import" -m "Imports project scaffolding."
git push
```

#### All projects

Check the `.github/workflows` folder and remove the workflows that do not belong
to the project.

Apply the labels with [labelr](https://github.com/rgreinho/labelr-rs):

```bash
labelr --organization PeopleForBikes --sync .github/labels.yml
```

Finally, setup the branch protection:

> **The checks may need to be adjusted based on the language that was selected
> for the project.**

```json
echo '{
  "required_status_checks": {
    "strict": true,
    "checks": [{ "context": "ci-rust / lint"}, {"context": "ci-rust / test"}, {"context": "ci-rust / build"}]
  },
  "enforce_admins": false,
  "required_pull_request_reviews": {
    "dismiss_stale_reviews": true,
    "required_approving_review_count": 1
  },
  "restrictions": null
}' >/tmp/config-branch-rules
```

```bash
gh api \
  --method PUT \
  --preview luke-cage \
  --input /tmp/config-branch-rules \
  repos/PeopleForBikes/${PFB_REPO}/branches/main/protection
```

As the final touch, some repository settings can also be adjusted:

```bash
gh repo edit --enable-merge-commit=false --delete-branch-on-merge
```

### Archive a public repository

Archive repositories to indicate that they are unmaintained and make them
read-only.

Start by editing the repository's `README.md` file to add the following note at
the top:

```txt
> **NOTE**: _This repository is no longer supported or updated by the BNA
> Mechanics team. If you wish to continue to develop this code yourself, we
> recommend you fork it._
```

Close all open issues and pull requests and archive the repository:

```bash
for n in $(gh issue list --state open --json number --jq .[].number); do gh issue close ${n} --reason "This repository was archived."; done
for n in $(gh pr list --state open --json number --jq .[].number); do gh pr close ${n} --comment "This repository was archived."; done
gh repo archive -y
```

[bna mechanics]: https://peopleforbikes.github.io
[calver]: https://calver.org/
[cc0-1.0]: https://choosealicense.com/licenses/cc0-1.0/
[cc-by-4.0]: https://creativecommons.org/licenses/by/4.0/deed.en
[github]: http://github.com
[mit]: https://choosealicense.com/licenses/mit/
[the team]: mailto:research@peopleforbikes.org
