Feature: TStyleLogin
  In order to present a Twitter-style login box
  As an Ajax element
  I want to be sure its hidden or present as appropriate

	Scenario: Login box is present but hidden
		When I am on the homepage
		Then "div.in-login-box" should be hidden

	Scenario: Login box is visible after opening
		Given I am on the homepage
		When I click "login"
		Then "div.in-login-box" should be visible
