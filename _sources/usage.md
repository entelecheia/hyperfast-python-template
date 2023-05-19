# Usage

```{lastupdate} |lastupdate|

```

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
   copier gh:entelecheia/hyperfast-python-template path/to/destination
   ```
3. Do your work

### II. Inject the template

1. Install Copier
   ```bash
   pipx install copier
   ```
2. From the root of your project, run
   ```bash
   copier gh:entelecheia/hyperfast-python-template .
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
