# Hyperfast Python Template

[![pypi-image]][pypi-url]
[![version-image]][release-url]
[![release-date-image]][release-url]
[![license-image]][license-url]
[![jupyter-book-image]][docs-url]
[![codecov][codecov-image]][codecov-url]

<!-- Links: -->

[codecov-image]: https://codecov.io/gh/entelecheia/hyperfast-python-template/branch/main/graph/badge.svg?token=29NXUNQUBU
[codecov-url]: https://codecov.io/gh/entelecheia/hyperfast-python-template
[pypi-image]: https://img.shields.io/pypi/v/hyperfast-python-template
[license-image]: https://img.shields.io/github/license/entelecheia/hyperfast-python-template
[license-url]: https://github.com/entelecheia/hyperfast-python-template/blob/main/LICENSE
[version-image]: https://img.shields.io/github/v/release/entelecheia/hyperfast-python-template?sort=semver
[release-date-image]: https://img.shields.io/github/release-date/entelecheia/hyperfast-python-template
[release-url]: https://github.com/entelecheia/hyperfast-python-template/releases
[jupyter-book-image]: https://jupyterbook.org/en/stable/_images/badge.svg
[repo-url]: https://github.com/entelecheia/hyperfast-python-template
[pypi-url]: https://pypi.org/project/hyperfast-python-template
[docs-url]: https://hyperfast-python.entelecheia.ai
[changelog]: https://github.com/entelecheia/hyperfast-python-template/blob/main/CHANGELOG.md
[contributing guidelines]: https://github.com/entelecheia/hyperfast-python-template/blob/main/CONTRIBUTING.md

<!-- Links: -->

Streamlining Python Project Development with a Comprehensive Toolset for Quality, Efficiency, and Maintainability

- Documentation: [https://hyperfast-python.entelecheia.ai][docs-url]
- GitHub: [https://github.com/entelecheia/hyperfast-python-template][repo-url]
- PyPI: [https://pypi.org/project/hyperfast-python-template][pypi-url]

The Hyperfast Python Template is a powerful and comprehensive solution designed to accelerate the development and maintenance of high-quality Python projects. By incorporating industry best practices and automating key aspects such as dependency management, releases, code formatting, testing, and documentation, this template streamlines the entire development process. It ensures code quality through continuous integration, coverage reporting, linting, and static type-checking while providing seamless support for Conventional Commits and Semantic Versioning. With the Hyperfast Python Template, developers can efficiently create and manage Python projects, focusing on their core functionality while enjoying a robust, well-organized, and maintainable codebase.

## Quickstart

There are two ways to use this project:

- Use [Copier] to create a project to your local machine directly
- Inject [Hyperfast Python Template] into an existing project

### I. Use Copier

1. Install Copier
   ```bash
   pipx install copier
   ```
2. Run
   ```bash
   copier copy --trust gh:entelecheia/hyperfast-python-template path/to/destination
   ```
3. Do your work

### II. Inject the template

1. Install Copier
   ```bash
   pipx install copier
   ```
2. From the root of your project, run
   ```bash
   copier copy --trust gh:entelecheia/hyperfast-python-template .
   ```
3. Do your work

## Managing Actions Secrets and Variables in Your Project

When using the HyFI-Template for your project, there are several GitHub Actions secrets and variables that you need to add to ensure proper functioning of the release action and optional JupyterBook deployment.

### Adding PYPI_API_TOKEN and TEST_PYPI_API_TOKEN

To automate the release process of your project to PyPI, you need to provide two tokens: `PYPI_API_TOKEN` and `TEST_PYPI_API_TOKEN`. These tokens will be used by the GitHub Actions workflow to authenticate with PyPI and TestPyPI, respectively.

1. Generate an API token for your PyPI account by following the instructions in the [official PyPI documentation](https://pypi.org/manage/account/token/).
2. Generate an API token for your TestPyPI account by following the instructions in the [official TestPyPI documentation](https://test.pypi.org/manage/account/token/).
3. In your GitHub repository, go to the "Settings" tab and click on "Secrets" in the left sidebar.
4. Click the "New repository secret" button.
5. Add the `PYPI_API_TOKEN` secret with the value set to the token generated for your PyPI account.
6. Add the `TEST_PYPI_API_TOKEN` secret with the value set to the token generated for your TestPyPI account.

By providing these tokens, your project's release action will have the necessary permissions to publish your package to PyPI and TestPyPI.

### Optionally Adding CNAME for JupyterBook Deployment

If you plan to deploy the JupyterBook documentation to a custom domain, you'll need to add a `CNAME` variable to your GitHub repository.

1. In your GitHub repository, go to the "Settings" tab and click on "Pages" in the left sidebar.
2. Follow the instructions to configure your custom domain.
3. In your GitHub repository, go to the "Settings" tab and click on "Repository Variables" in the left sidebar.
4. Click the "New repository variable" button.
5. Add a new variable with the key `CNAME` and set the value to your custom domain (e.g., `your-custom-domain.com`).

By adding the `CNAME` variable, the GitHub Pages action in your `deploy-docs.yaml` workflow will properly configure the deployment to use your custom domain.

With the `CNAME` repository variable properly configured, your project will be set up to handle JupyterBook deployment to your custom domain effectively.

## Changelog

See the [CHANGELOG] for more information.

## Contributing

Contributions are welcome! Please see the [contributing guidelines] for more information.

## License

This project is released under the [MIT License][license-url].
