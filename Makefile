PROTO_DIR = proto
OUT_GO = generated/go
OUT_PY = generated/python


python:
	@mkdir -p $(OUT_PY)
	python -m grpc_tools.protoc \
		-I$(PROTO_DIR) \
		--python_out=$(OUT_PY) \
		--grpc_python_out=$(OUT_PY) \
		$(PROTO_DIR)/*.proto