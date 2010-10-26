# AjaxBoxLogin

THIS IS WAY PRE-ALPHA AND DOES NOT WORK YET

AjaxBoxLogin is a small gem that gives you a AJAX Twitter-style login box on your app's pages generates the Rails 3 view partial, stylesheet and javascript needed to have. 

* View can be generated as either ERB or HAML
* With HAML you get SCSS instead of SASS for the stylesheet
* JavaScript can be dependent on either Prototype JS or jQuery

AjaxBoxLogin is not compatible with versions of Rails before 3.0. Patches that add such support will be considered.

## Requirements

* Rails 3.0 or higher

## Setup

Installs as a gem

    gem install ajaxboxlogin

## Usage

Invoke the ajaxboxlogin generator

    Syntax:
    ajaxboxlogin gen {view_type} {view_path} {javascript_lib}
    
    Generates ERB/CSS files, dependent on jQuery, with the partial in app/views/shared
    ajaxboxlogin gen erb shared jquery      
    
    Generates HAML/SCSS files, dependent on PrototypeJS, with the partial in app/views/layouts
    ajaxboxlogin gen haml layouts prototype

### Options

* view_type is a string naming the template system to use, currently valid values are 'erb' and 'haml'
* view_path is a string appended to 'app/views' to build the directory name in which the partial is generated
* javascript_lib is a string representing the name of the JavaScript framework used in your app, currently valid values are 'jquery' and 'prototype'

### Note

* ajaxboxlogin.js is always generated to /public/javascripts/ajaxboxlogin.js

## In Your Code

### Using the Partial

The partial, _ajaxboxlogin, expects to be passed two parameters:

* The login object (e.g., a User, Account or similar) that responds to two messages: login and password
* The logged in state, similar to current_user.logged_in?

    Syntax:
    <%= render partial 'shared/ajaxboxlogin', :locals => {:logged_status => boolean, :login_object => object} %>
    
    Example:
    <%= render partial 'shared/ajaxboxlogin', :locals => {:logged_status => true, :login_object => User} %>

You may or may not have a login attribute on your User/Account object, if so you can edit the partial to use your preferred name or add an attr_accessible alias to the appropriate attribute on your object.

### Using the stylesheet and JavaScript files

For basic Rails usage, add these two files to the head section of your layout(s) as such:

    <%= stylesheet_link_tag 'ajaxboxlogin.css' %>
    <%= javascript_include_tag 'ajaxboxlogin' %>

Specifics may vary with your usage (such as if you use a tool like Jammit or Asset Packager).

The CSS provided is fairly basic; it expects that the login box will be shown at the top of the page towards the right edge.

### How to Customize

To match your app's styling and layout simply edit the provided CSS.

ERB: public/stylesheets/ajaxboxlogin.css

HAML/SASS: app/stylesheets/ajaxboxlogin.scss
	  
## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don’t break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## License

Copyright (c) 2010 William Lazar

You may choose any of these licenses:

* CreativeCommons License, Non-commercial Share Alike
* LGPL, GNU Lesser General Public License
* Ruby License

THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
