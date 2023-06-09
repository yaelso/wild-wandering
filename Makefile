.ONESHELL:

.DEFAULT_GOAL := run

PYTHON = ./venv/bin/python
PIP = ./venv/bin/pip

venv/bin/activate: requirements.txt
	python -m venv venv
	chmod +x venv/bin/activate
	. ./venv/bin/activate
	$(PIP) install -r requirements.txt

venv: venv/bin/activate
	. ./venv/bin/activate

run: venv
	$(PYTHON) app.py

clean:
	rm -rf __pycache__
	rm -rf venv
