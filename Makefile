.PHONY: help serve serve-lan build clean

# Default: show targets
help:
	@echo "MkDocs commands:"
	@echo "  make serve     - Start dev server with live reload (http://127.0.0.1:8000)"
	@echo "  make serve-lan - Same, listen on all interfaces (e.g. http://<your-ip>:8000)"
	@echo "  make build     - Build static site into site/"
	@echo "  make clean     - Remove site/ and cache"

# Serve: no minify (faster). Build: minify (MKDOCS_MINIFY=true).
serve:
	uv run mkdocs serve

serve-lan:
	uv run mkdocs serve -a 0.0.0.0:8000

build:
	MKDOCS_MINIFY=true uv run mkdocs build

clean:
	rm -rf site/
	rm -rf .cache
