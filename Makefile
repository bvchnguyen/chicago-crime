# Define variables
VENV_NAME = venv
PYTHON = python3
REQUIREMENTS_FILE = requirements.txt

venv:
	$(PYTHON) -m venv $(VENV_NAME)

activate:
	source $(VENV_NAME)/bin/activate

install:
	pip install -r $(REQUIREMENTS_FILE)

setup: venv activate

clean:
	rm -rf $(VENV_NAME)

