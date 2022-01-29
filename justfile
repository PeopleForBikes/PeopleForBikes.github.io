sass_files := "themes/juice/sass/_custom_*.scss"

# Meta task running ALL the CI tasks at onces.
ci: lint

# Meta task running all the linters at once.
lint: lint-md lint-sass

# Lint sass files.
lint-sass:
  npx --yes prettier --check {{sass_files}}

# Lint markown files, ignoring the content of the themes.
lint-md:
  npx --yes markdownlint-cli2 "**/*.md" "#themes"

# Meta tasks running all formatters at once.
fmt: fmt-md fmt-sass

# Format markdown files, ignoring the content of the themes.
fmt-md:
  npx --yes prettier --write --prose-wrap always **/*.md

# Format SASS files.
fmt-sass:
  npx --yes prettier --write {{sass_files}}
