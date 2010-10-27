# -*- encoding: utf-8 -*-
require File.expand_path("../lib/ajaxboxlogin/version", __FILE__)

CLASSES = %w'ajaxboxlogin generators/ajaxboxlogin'
FEATURES = %w'ajaxboxlogin generator'
SPECS = %w'ajaxboxlogin'

Gem::Specification.new do |s|
  s.name        = "ajaxboxlogin"
  s.version     = AjaxBoxLogin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bill Lazar"]
  s.email       = ["blazar+abl@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/ajaxboxlogin"
  s.summary     = %q{Generates the Rails 3 view partial, stylesheet and javascript for a Twitter-style AJAX login box}
  s.description = %q{AjaxBoxLogin is a small gem that generates the Rails 3 view partial, stylesheet and javascript needed to have a Twitter-style AJAX login box on your app's pages.}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "ajaxboxlogin"

  s.files         = ['lib/ajaxboxlogin.rb'] + ['lib/ajaxboxlogin/cli.rb'] + CLASSES.map{|c| "lib/ajaxboxlogin/#{c}.rb"}
  s.test_files    = FEATURES.map{|c| "features/#{c}.feature"} + SPECS.map{|c| "spec/#{c}_spec.rb"}
  s.executables   = ['ajaxboxlogin']
  s.require_paths = ["lib"]
  
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.0.0"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "capybara"

  s.add_dependency "activesupport"
  s.add_dependency "thor"

end
