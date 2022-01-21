lint:
	@echo "Running isort, black, and prettier"
	@find . -name "*.py" ! -name "*_pb2*" ! -path "./venv/*" -exec isort {} \+ -exec black {} \+
	@npx prettier --write .
	
bootstrap:
	@python3 -m venv venv
	@source venv/bin/activate
	@pip install -r requirements.txt
