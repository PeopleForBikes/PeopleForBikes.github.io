# peopleforbikes.github.io

PeopleForBikes community site.

## Developping

The website is generated using [Zola] static site generator and the [Juice]
theme.

Refer to the
[installation](https://www.getzola.org/documentation/getting-started/installation/)
page to learn how to set it up for your platform.

### Serving the development site

To render the site when adding new content, run the following command:

```bash
zola serve
```

Then open the <http://127.0.0.1:1111> URL to view the site.

## Administration tasks

Administration tasks are being provided as convenience in a `justfile`.

More information about [Just] can be find in their repository. The
[installation](https://github.com/casey/just#installation) section of their
documentation will guide you through the setup process.

Run `just -l` to see the list of provided tasks.

[Zola]: https://www.getzola.org/
[Juice]: https://www.getzola.org/themes/juice/
[Just]: https://github.com/casey/just
