PYTHON := python3
VENV_NAME := venv
CLI_APP := myApp
PIP := $(VENV_NAME)/bin/pip

.PHONY: setup test run clean install_test_deps

clean:
	clear
	rm -rf $(VENV_NAME)

setup:
	clear
	$(PYTHON) -m venv $(VENV_NAME)
	$(PIP) install -r requirements.txt

test:
	clear
	@$(VENV_NAME)/bin/pytest $(CLI_APP)/tests --no-header -v

run:
	clear
	@$(PYTHON) $(CLI_APP)/cli.py
