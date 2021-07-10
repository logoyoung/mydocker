dev:
	FLASK_APP=jamleap FLASK_ENV=development flask run --host=0.0.0.0 --port=3100

install:
	python3 setup.py install

lint:
	flake8 ./

build-dev:
	docker build -f ./Dockerfile.dev -t ccr.ccs.tencentyun.com/jamleap/data-translator:dev .

build:
	docker build -t ccr.ccs.tencentyun.com/jamleap/data-translator:latest .
