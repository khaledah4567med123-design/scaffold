install:
	python -m pip install --upgrade pip &&\
		python -m pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C Hello.py

test:
	python -m pytest -vv --cov=hello Test_Hello.py
