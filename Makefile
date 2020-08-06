test: venv/bin/py.test
	venv/bin/python setup.py develop
	venv/bin/py.test --looponfail tests

venv/bin/py.test: venv
	venv/bin/pip install pytest
	venv/bin/pip install pytest-xdist

venv:
	python3.5 -m venv venv
