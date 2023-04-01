# nicocourts.com source code

Here is the code for my public website, hosted by Github pages using [Jekyll](https://jekyllrb.com/) and the wonderful [Minimal Mistakes theme](https://github.com/mmistakes/minimal-mistakes).

## Instructions in a Debian system
After a fresh download of the source code, first install dependencies:

```sudo apt install ruby-full build-essential zlib1g-dev nodejs```

Then install the Ruby gems

```gem install jekyll bundler```

and finally install any missing dependencies by moving to the project directory and running

```bundle install```

## Serving the site locally for development

```bundle exec jekyll serve```
