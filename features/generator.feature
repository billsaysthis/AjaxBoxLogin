Feature: Generating things
  In order to generate files necessary for AjaxBoxLogin
  As a developer
  I want AjaxBoxLogin to hold my hand, tightly

	# These scenarios are why the Aruba gem is required
	
	Scenario: Generating erb files for Prototype
	  When I run "ajaxboxlogin erb shared"
		Then the following files should exist:
			| app/views/shared/_ajaxboxlogin.html.erb |
			| public/javascripts/ajaxboxlogin.js |
			| public/stylesheets/ajaxboxlogin.css |
		Then the file "public/javascripts/ajaxboxlogin.js" should contain
			| Requires prototype.js to already be invoked |

	Scenario: Generating erb files for jQuery
	  When I run "ajaxboxlogin erb shared jquery"
		Then the following files should exist:
			| app/views/shared/_ajaxboxlogin.html.erb |
			| public/javascripts/ajaxboxlogin.js |
			| public/stylesheets/ajaxboxlogin.css |
		Then the file "public/javascripts/ajaxboxlogin.js" should contain
			| Requires jquery.js to already be invoked |

	Scenario: Generating haml/scss files
	  When I run "ajaxboxlogin haml shared"
		Then the following files should exist:
			| app/views/shared/_ajaxboxlogin.html.haml |
			| public/javascripts/ajaxboxlogin.js |
			| app/stylesheets/ajaxboxlogin.scss |

	# TODO
	# Add negative cases to test defaults
	
	