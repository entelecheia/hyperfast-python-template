# Hyperfast Python Template

![][version-image]
![Release date][release-date-image]
![License][license-image]
![semantic-release][semantic-image]
![Jupyter Book][jupyter-book-image]
![Conventional Commits][conventional-commits-image]

A python template that helps you jump start your project

- Documentation: [https://entelecheia.github.io/hyperfast-python-template](https://entelecheia.github.io/hyperfast-python-template)
- GitHub: [https://github.com/entelecheia/hyperfast-python-template](https://github.com/entelecheia/hyperfast-python-template)
- PyPI: [https://pypi.org/project/hyperfast-python-template](https://pypi.org/project/hyperfast-python-template)

Hyperfast Python Template is a self-contained template that helps you initialize your Python project inside the template. It is hyperfast in the sense that the template itself is converted into a Python project in the blink of an eye. It is also hyperfast in the sense that it helps you jump start your project with the best practices in the Python community.

## Usage

There are three ways to use this project:

- Use [the template][template-url] to create a new repository
- Use [Copier][copier-url] to create a project to your local machine directly
- Inject [the template][template-url] into an existing project

### I. Use the template

1. Click the `Use this template` button
2. Enter a name for your repository
3. Click `Create repository from template`
4. Clone your new repository to your local machine
5. Initialize your project with `make init-project`
6. Do your work

### II. Use Copier

1. Install Copier with `pipx install copier`
2. Run `copier gh:entelecheia/hyperfast-python-template path/to/destination`
3. Initialize your project with `make init-git`
4. Do your work

### III. Inject the template

1. Install Copier with `pipx install copier`
2. From the root of your project, run `copier gh:entelecheia/hyperfast-python-template .`
3. If your project is not a git repository, initialize it with `make init-git`
4. Do your work

## Features

- [x] [Semantic Release][semantic-url]
- [x] [Conventional Commits][conventional-commits-url]
- [x] [Jupyter Book][jupyter-book-url]
- [x] [Copier][copier-url]

## License

This project is released under the [MIT License][license-url].

<!-- Links: -->

[repo-url]: https://github.com/entelecheia/hyperfast-python-template
[pypi-url]: https://pypi.org/project/hyperfast-python-template
[docs-url]: https://entelecheia.github.io/hyperfast-python-template
[version-image]: https://img.shields.io/github/v/release/entelecheia/hyperfast-python-template?sort=semver
[release-date-image]: https://img.shields.io/github/release-date/entelecheia/hyperfast-python-template
[release-url]: https://github.com/entelecheia/hyperfast-python-template/releases
[license-image]: https://img.shields.io/github/license/entelecheia/hyperfast-python-template
[license-url]: https://github.com/entelecheia/hyperfast-python-template/blob/main/LICENSE
[changelog-url]: https://github.com/entelecheia/hyperfast-python-template/blob/main/CHANGELOG.md

[template-url]: https://github.com/entelecheia/hyperfast-python-template
[semantic-image]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
[semantic-url]: https://github.com/semantic-release/semantic-release
[conventional-commits-image]: https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white
[conventional-commits-url]: https://conventionalcommits.org
[copier-url]: https://copier.readthedocs.io
[jupyter-book-image]: https://jupyterbook.org/en/stable/_images/badge.svg
[jupyter-book-url]: https://jupyterbook.org
