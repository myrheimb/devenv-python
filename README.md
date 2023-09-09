# devenv-python
A simple template to get started with a new Python project using [devenv](https://devenv.sh/).

## Requirements
- [Nix](https://nixos.org/download#download-nix)
- [devenv](https://devenv.sh/getting-started)
- [direnv](https://direnv.net/docs/installation.html)

## Usage
### Setting up
Clone and `cd` into the repo, write `direnv allow`, hit enter, and watch the magic happen!
Devenv will automatically take care of setting up everything as [Nix derivations](https://zero-to-nix.com/concepts/derivations), create a Python virtual environment, activate it, and install the packages specified in the `pyproject.toml` file.

This project will be completely isolated and not make any global changes.

### Add or update Python packages
To add a new Python package, simply write `poetry add package`, and poetry will add it to the `pyproject.toml` file, resolve dependencies in `poetry.lock`, and install the package in the virtual environment.
Similarly, writing `poetry remove package` will do the reverse.

If you want to update a package version, you can write `poetry add package@latest`.
