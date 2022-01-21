# Meta task running all the linters at once.
lint: lint-md

# Lint sass files.
lint-sass:
  npx --yes prettier --check sass/*.scss

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
  npx --yes prettier --write sass/*.scss
