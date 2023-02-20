# Hyperfast Python Template

![][version-image]
[![Release date][release-date-image]][release-url]
[![License][license-image]][license-url]
[![semantic-release][semantic-image]][semantic-url]
[![Jupyter Book][jupyter-book-image]][jupyter-book-url]
[![Conventional Commits][conventional-commits-image]][conventional-commits-url]

A python template that helps you jump start your project

- Documentation: https://entelecheia.github.io/hyperfast-python-template
- GitHub: https://gihub.com/entelecheia/hyperfast-python-template
- PyPI: https://pypi.org/project/hyperfast-python-template

Hyperfast Python Template is a self-contained template that helps you initialize your Python project inside the template.

## Usage

There are three ways to use this project:

1. Use [the template][template-url] to create a new repository
2. Use [Copier][copier-url] to create a project to your local machine directly
3. Inject [the template][template-url] into an existing project

### 1. Use the template

1. Click the `Use this template` button
2. Enter a name for your repository
3. Click `Create repository from template`
4. Clone your new repository to your local machine
5. Initialize your project with `make init-project`
6. Do your work

### 2. Use Copier

1. Install Copier with `pipx install copier`
2. Run `copier gh:entelecheia/hyperfast-python-template path/to/destination`
3. Initialize your project with `make init-git`
4. Do your work

### 3. Inject the template

1. From the root of your project, run `copier gh:entelecheia/hyperfast-python-template .`
2. If your project is not a git repository, initialize it with `make init-git`
3. Do your work

## License

This project is released under the [MIT License][license-url].

<!-- Links: -->

[repo-url]: https://gihub.com/entelecheia/hyperfast-python-template
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
