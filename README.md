# nicocourts.com source code

Here is the code for my public website, hosted by Github pages using [Jekyll](https://jekyllrb.com/) and the wonderful [Minimal Mistakes theme](https://github.com/mmistakes/minimal-mistakes).

## Instructions in a Debian system
After a fresh download of the source code, first install dependencies:

```sudo apt install ruby-full build-essential zlib1g-dev nodejs```

Then install the Ruby gems

```gem install jekyll bundler```.

Note that I have sometimes run into permissions issues because it's trying to save installed gems somewhere stupid. Just set the variables

```
export GEM_HOME="$HOME/.gem"
export PATH=${PATH}:$GEM_HOME/bin
```

and it should work. Finally install any missing dependencies by moving to the project directory and running

```bundle install```

## Serving the site locally for development

```bundle exec jekyll serve```
