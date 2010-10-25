# TStyleLogin

TStyleLogin is a small gem that generates the Rails 3 view partial, stylesheet and javascript needed to have a Twitter-style AJAX login box on your app's pages. View can be generated as either ERB or HAML and with HAML you get SCSS instead of SASS for the stylesheet.

TStyleLogin is not compatible with versions of Rails before 3.0. Patches that add such support will be considered.

## Setup

Installs as a gem

    gem install tstyle-login

## Usage

Invoke the tstylelogin generator

    tstylelogin {view_type} {view_path}
    tstylelogin erb shared   => generates ERB/CSS files, with the partial in app/views/shared
    tstylelogin haml layouts => generates HAML/SCSS files, with the partial in app/views/layouts

### Options
* view_type is a string naming the template system to use, currently valid values are 'erb' and 'haml'
* view_path is a string appended to 'app/views' to build the directory name in which the partial is generated

### Note
* tstyle-login.js is always generated to /public/javascripts

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don’t break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## License

(The MIT License)

Copyright (c) 2010 William Lazar

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.