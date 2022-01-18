# Meta task running all the linters at once.
lint: lint-md

# Lint the markown files, ignoring the content of the themes.
lint-md:
  npx  markdownlint-cli2 "**/*.md" "#themes"
