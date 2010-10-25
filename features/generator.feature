Feature: Generating things
  In order to generate files necessary for TStyleLogin
  As a developer
  I want TSL to hold my hand, tightly

	Scenario: Generating erb files
	  When I run "tstylelogin erb shared"
		Then the following files should exist:
			| app/views/shared/_tstyle-login.html.erb |
			| public/javascripts/tstyle-login.js |
			| public/stylesheets/tstyle-login.css |

	Scenario: Generating haml/scss files
	  When I run "tstylelogin haml shared"
		Then the following files should exist:
			| app/views/shared/_tstyle-login.html.haml |
			| public/javascripts/tstyle-login.js |
			| app/stylesheets/tstyle-login.scss |

	
	