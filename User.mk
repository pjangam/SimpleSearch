.PHONY: dummy
dummy:
	set -a
	source .env
	set +a

-include dummy
