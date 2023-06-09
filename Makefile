.ONESHELL:

.DEFAULT_GOAL := run

PYTHON = ./venv/bin/python3
PIP = ./venv/bin/pip

TAG := $(shell git describe --tags --always --dirty)

venv/bin/activate: requirements.txt
	python3 -m venv venv
	chmod +x venv/bin/activate
	. ./venv/bin/activate
	$(PIP) install -r requirements.txt

venv: venv/bin/activate
	. ./venv/bin/activate

run: venv
	$(PYTHON) app.py

test:
	@pytest

version:
	@echo $(TAG)

clean:
	rm -rf __pycache__
	rm -rf venv
