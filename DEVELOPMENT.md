# Developing this role

## Initial configuration

Run this script for initial setup (just after `cookiecutter`):
```
./bin/init-repo.sh
```

## Ongoing development

1. Use a Python virtual environment
2. Make sure pre-commit and commitizen are installed (`pip install -r requirements.txt)
3. Make sure pre-commit hooks are installed:  
    pre-commit autoupdate
    pre-commit install
    pre-commit install --hook-type commit-msg
4. Use `commitizen`-styled commit messages
5. Use `cz bump` to control versioning
