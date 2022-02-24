lint:
	@echo "Running isort, black, and prettier"
	@find . -name "*.py" ! -name "*_pb2*" ! -path "./venv/*" -exec isort {} \+ -exec black {} \+
	@npx prettier --write .

bootstrap:
	python3 -m pip install --upgrade pip
	sudo apt install python3.8-venv
	python3 -m venv venv
	. ./venv/bin/activate
	pip install -r requirements.txt
	npm i -g zx
	chmod +x ./get-creds.mjs
	./get-creds.mjs
