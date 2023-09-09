# Makefile used to run common commands.

.PHONY: help
# Automatically parse recipes and their comments to display available commands.
# Ref: https://stackoverflow.com/a/35730928
# List the available commands.
help:
	@awk '/^#/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t

.PHONY: clean
# Remove the .devenv, .direnv, and .venv folders.
clean:
	@rm -rf .devenv .direnv .venv
	@direnv reload

.PHONY: gc
# Removes old devenv generations.
gc:
	@devenv gc
