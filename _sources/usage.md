# Usage

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
   copier copy gh:entelecheia/hyperfast-python-template path/to/destination
   ```
3. Do your work

### II. Inject the template

1. Install Copier
   ```bash
   pipx install copier
   ```
2. From the root of your project, run
   ```bash
   copier copy gh:entelecheia/hyperfast-python-template .
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

## Features

- [x] Automated changelog with [Conventional Commits] and [Python Semantic Release]
- [x] Automated dependency updates with [Dependabot]
- [x] Automated semantic versioning with [Python Semantic Release]
- [x] Automated uploads to [PyPI] and [TestPyPI]
- [x] Code coverage with [Pytest-Cov]
- [x] Code formatting with [Black] and [Prettier]
- [x] Continuous integration with [GitHub Actions]
- [x] Coverage reporting with [Codecov]
- [x] Documentation with [MkDocs], [Jupyter Book], and [Read the Docs]
- [x] Hyperfast rendering of the template into a new project with [Copier]
- [x] Import sorting with [isort]
- [x] Linting with [pre-commit] and [Flake8]
- [x] Managing project labels with [GitHub Labeler]
- [x] Managing projects with [Make]
- [x] Packaging and dependency management with [Poetry]
- [x] Static type-checking with [mypy]
- [x] Support for [Conventional Commits]
- [x] Support for [Semantic Versioning]
- [x] Testing with [pytest]

- [ ] Automated Python syntax upgrades with [pyupgrade]
- [ ] Automatic documentation from sources for [MkDocs] with [mkdocstrings]
- [ ] Check documentation examples with [xdoctest]
- [ ] Runtime type-checking with [Typeguard]
- [ ] Security audit with [Bandit] and [Safety]
- [ ] Test automation with [Nox]

The template supports Python 3.8, 3.9, and 3.10.

[bandit]: https://github.com/PyCQA/bandit
[black]: https://github.com/psf/black
[click]: https://click.palletsprojects.com/
[codecov]: https://codecov.io/
[conventional commits]: https://conventionalcommits.org
[conventional release labels]: https://github.com/marketplace/actions/conventional-release-labels
[copier]: https://copier.readthedocs.io
[coverage.py]: https://coverage.readthedocs.io/
[dependabot]: https://dependabot.com/
[flake8]: http://flake8.pycqa.org
[github actions]: https://github.com/features/actions
[github labeler]: https://github.com/marketplace/actions/github-labeler
[isort]: https://pycqa.github.io/isort/
[jupyter book]: https://jupyterbook.org
[make]: https://www.gnu.org/software/make/
[mkdocs]: https://www.mkdocs.org
[mkdocstrings]: https://mkdocstrings.github.io
[mypy]: http://mypy-lang.org/
[myst]: https://myst-parser.readthedocs.io/
[nox]: https://nox.thea.codes/
[poetry]: https://python-poetry.org/
[pre-commit]: https://pre-commit.com/
[prettier]: https://prettier.io/
[pypi]: https://pypi.org/
[pytest-cov]: https://pytest-cov.readthedocs.io/
[pytest]: https://docs.pytest.org/en/latest/
[python semantic release]: https://python-semantic-release.readthedocs.io/en/latest/
[pyupgrade]: https://github.com/asottile/pyupgrade
[read the docs]: https://readthedocs.org/
[release drafter]: https://github.com/release-drafter/release-drafter
[safety]: https://github.com/pyupio/safety
[semantic versioning]: https://semver.org
[testpypi]: https://test.pypi.org/
[typeguard]: https://github.com/agronholm/typeguard
[xdoctest]: https://github.com/Erotemic/xdoctest
