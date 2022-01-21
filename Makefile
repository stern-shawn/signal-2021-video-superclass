lint:
	@echo "Running isort, black, and prettier"
	@find . -name "*.py" ! -name "*_pb2*" ! -path "./venv/*" -exec isort {} \+ -exec black {} \+
	@npx prettier --write .

bootstrap:
	python3 -m pip install --upgrade pip
	python3 -m venv venv
	. ./venv/bin/activate
	pip install -r requirements.txt
	printf "TWILIO_ACCOUNT_SID=<your account SID>\nTWILIO_API_KEY=<your api key>\nTWILIO_API_SECRET=<your api key secret>" >> .env
