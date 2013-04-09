build: components lib
	@rm -rf dist
	@mkdir dist
	@node_modules/.bin/coffee -b -o dist -c lib/*.coffee
	@node_modules/.bin/component build --standalone cowlamp
	@mv build/build.js cowlamp.js
	@rm -rf build
	@node_modules/.bin/uglifyjs -nc --unsafe -mt -o cowlamp.min.js cowlamp.js
	@echo "File size (minified): " && cat cowlamp.min.js | wc -c
	@echo "File size (gzipped): " && cat cowlamp.min.js | gzip -9f  | wc -c

test: build lib
	@node_modules/.bin/mocha --compilers coffee:coffee-script

components: component.json
	@node_modules/.bin/component install --dev

docs: lib
	@node_modules/.bin/lidoc README.md lib/*.coffee --output docs --github nordus/cowlamp

docs.deploy: docs
	@cd docs && \
  git init . && \
  git add . && \
  git commit -m "Update documentation"; \
  git push "https://github.com/nordus/cowlamp" master:gh-pages --force && \
  rm -rf .git

clean:
	@rm -rf dist
	@rm -rf components
	@rm -rf build
	@rm -rf docs

.PHONY: test docs docs.deploy