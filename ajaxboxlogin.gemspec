# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ajaxbox-login/version"

Gem::Specification.new do |s|
  s.name        = "ajaxbox-login"
  s.version     = AjaxBox::Login::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bill Lazar"]
  s.email       = ["blazar+abl@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/ajaxbox-login"
  s.summary     = %q{Generates the Rails 3 view partial, stylesheet and javascript for a Twitter-style AJAX login box}
  s.description = %q{AjaxBoxLogin is a small gem that generates the Rails 3 view partial, stylesheet and javascript needed to have a Twitter-style AJAX login box on your app's pages.}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "ajaxbox-login"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.0.0"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "capybara"

  s.add_dependency "activesupport"
  s.add_dependency "thor"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
