+++
title = "Contributing"
sort_by = "weight"
date = 2022-01-17
weight = 30
+++

# Contributing

## Guidelines

These guidelines are general ones that apply globally to all
[PeopleForBikes](https://github.com/PeopleForBikes/) projects.

However it is possible that individual projects have different or more specific
recommendations. If there is one, always refer to the `CONTRIBUTING.md` file in
the repository of the project you are working on.

- Use the provided templates to file an [issue] or a [pull request].
- Create a topic branch from where you want to base your work.
- Format the files properly. Please use the dedicated task runner if any.
- If applicable, add some tests to validate your changes and ensure nothing else
  was accidentally broken.
- Commit messages must start with a capitalized and short summary (max. 50
  chars) written in the imperative, followed by an optional, more detailed
  explanatory text which is separated from the summary by an empty line.
- Commit messages should follow best practices, including explaining the context
  of the problem and how it was solved, including in caveats or follow up
  changes required. They should tell the story of the change and provide readers
  understanding of what led to it. Please refer to [How to Write a Git
  Commit Message] for more details.
- If your [pull request] is a work in progress, create it as a [draft pull request].
- Any [pull request] inactive for 28 days will be automatically closed. If you need
  more time to work on it, ask maintainers, to add the appropriate label to it. Use
  the `@` mention in the comments.
- Unless explicitly asked, [pull request] which don't pass all the CI checks will
  not be reviewed. Use the `@` mention in the comments to ask maintainers to help
  you.

## Commit example

```COMMIT_EDITMSG
Use Docker Hub build environment values

Uses the Docker Hub build environment values in order to ensure the
correct version of ScrAPD is installed into the image.

Fixes scrapd/scrapd#54
```

The following commit is a good example as:

1. The fist line is a short description and starts with an imperative verb.
2. The first paragraph describes why this commit may be useful.
3. The last line points to an existing issue and will automatically close it.

[draft pull request]:
  https://github.blog/2019-02-14-introducing-draft-pull-requests/
[how to write a git commit message]: http://chris.beams.io/posts/git-commit
[issue]: https://github.com/PeopleForBikes/project/issues/new/choose
[pull request]: https://github.com/PeopleForBikes/project/pulls
