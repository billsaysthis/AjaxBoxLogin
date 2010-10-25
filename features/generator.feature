Feature: Generating things
  In order to generate files necessary for AjaxBoxLogin
  As a developer
  I want TSL to hold my hand, tightly

	Scenario: Generating erb files for Prototype
	  When I run "ajaxboxlogin erb shared"
		Then the following files should exist:
			| app/views/shared/_ajaxbox-login.html.erb |
			| public/javascripts/ajaxbox-login.js |
			| public/stylesheets/ajaxbox-login.css |
		Then the file "public/javascripts/ajaxbox-login.js" should contain
			| Requires prototype.js to already be invoked |

	Scenario: Generating erb files for jQuery
	  When I run "ajaxboxlogin erb shared jquery"
		Then the following files should exist:
			| app/views/shared/_ajaxbox-login.html.erb |
			| public/javascripts/ajaxbox-login.js |
			| public/stylesheets/ajaxbox-login.css |
		Then the file "public/javascripts/ajaxbox-login.js" should contain
			| Requires jquery.js to already be invoked |

	Scenario: Generating haml/scss files
	  When I run "ajaxboxlogin haml shared"
		Then the following files should exist:
			| app/views/shared/_ajaxbox-login.html.haml |
			| public/javascripts/ajaxbox-login.js |
			| app/stylesheets/ajaxbox-login.scss |

	
	