# TStyleLogin

THIS IS WAY PRE-ALPHA AND DOES NOT WORK YET

TStyleLogin is a small gem that generates the Rails 3 view partial, stylesheet and javascript needed to have a Twitter-style AJAX login box on your app's pages. View can be generated as either ERB or HAML and with HAML you get SCSS instead of SASS for the stylesheet.

TStyleLogin is not compatible with versions of Rails before 3.0. Patches that add such support will be considered.

## Setup

Installs as a gem

    gem install tstyle-login

## Usage

Invoke the tstylelogin generator

    tstylelogin gen {view_type} {view_path} {javascript_lib}
    tstylelogin gen erb shared jquery      => generates ERB/CSS files, dependent on jQuery, with the partial in app/views/shared
    tstylelogin gen haml layouts prototype => generates HAML/SCSS files, dependent on PrototypeJS, with the partial in app/views/layouts

### Options
* view_type is a string naming the template system to use, currently valid values are 'erb' and 'haml'
* view_path is a string appended to 'app/views' to build the directory name in which the partial is generated
* javascript_lib is a string representing the name of the JavaScript framework used in your app, currently valid values are 'jquery' and 'prototype'

### Note
* tstyle-login.js is always generated to /public/javascripts

## In Your Code

### Using the Partial

The partial, _tstyle-login, expects to be passed two parameters:
* The login object (e.g., a User, Account or similar) that responds to two messages: login and password
* The logged in state, similar to current_user.logged_in?

    <%= render partial 'shared/tstyle-login', :locals => {:logged_status => boolean, :login_object => object} %>
    <%= render partial 'shared/tstyle-login', :locals => {:logged_status => true, :login_object => User} %>

You may or may not have a login attribute on your User/Account object, if so you can edit the partial to use your preferred name or add an attr_accessible alias to the appropriate attribute on your object.

### Using the stylesheet and JavaScript files

Specifics may vary with your usage (such as if you use a tool like Jammit or Asset Packager) but basic Rails usage would have you adding these two files to the head section of your layout(s) as such:

    <%= stylesheet_link_tag 'tstyle-login.css' %>
    <%= javascript_include_tag 'tstyle-login' %>

The CSS provided is fairly basic, it expects that the login box will be shown at the top of the page towards the right edge. To match your app's styling and layout simply edit the provided CSS.
	  
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