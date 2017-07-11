My personal minimal static website.

* Install Jekyll, NodeJS and Bundler.
* Clone the forked repo on your machine
* Enter the cloned folder via terminal and run bundle install
* Then run bundle exec jekyll serve --drafts --config _config.yml
* Open it in your browser: http://localhost:4000
* Test your app with bundle exec htmlproofer ./_site

* Blogs, works and project are differentiated by the attribute with the same name of the category set to true and they must live in the directory with the same name
* Posts with date tag which is after the current time in GMT won't be published until that time arrives
* Drafts live in the folder with the same name and are only visible locally if you build with --drafts
* The local website redirects to the real one every time you click something, so remember to use direct urls
