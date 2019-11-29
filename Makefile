.PHONY: install
install:
	bundle install

.PHONY: serve
serve:
	bundle exec jekyll serve --drafts --config _config.yml

.PHONY: test
test:
	bundle exec htmlproofer \
	--http-status-ignore "999" \
	--file-ignore "./_site/markdown-extra-components/index.html,./_site/fake_work/index.html" \
	--url-ignore "https://facebook.com/antonio.uccio.verardi" \
	./_site
