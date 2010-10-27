require 'thor' 
require 'thor/actions' 
require 'ajaxboxlogin/ajaxboxlogin'
require File.expand_path("../lib/ajaxboxlogin/version", __FILE__)

# require 'ajaxboxlogin/version'

module AjaxBoxLogin
  class CLI < Thor
    include Thor::Actions
    
    desc "gen view_path view_path javascript_lib", "generates view partial of template_engine in view_path, along with needed JavaScript based on javascript_lib framework and a stylesheet"
    def gen(template_engine, view_path, javascript_lib)
      AjaxBoxLogin::AjaxBoxLoginGen.gen_files(template_engine, view_path, javascript_lib)
    end
    
    desc "version", "prints out AjaxBoxLogin's version information"
    def version
      say "AjaxBoxLogin version #{AjaxBoxLogin::VERSION}"
    end
    map %w(-v --version) => :version
  end
end