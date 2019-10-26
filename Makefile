.PHONY: install
install:
	bundle install

.PHONY: serve
serve:
	bundle exec jekyll serve --drafts --config _config.yml

.PHONY: test
test:
	bundle exec htmlproofer ./_site
