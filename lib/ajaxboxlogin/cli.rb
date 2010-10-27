require 'thor' 
require 'ajaxboxlogin/ajaxboxlogin'

module AjaxBoxLogin
  class CLI < Thor
    desc "gen view_path view_path javascript_lib", "generates view partial of template_engine in view_path, along with needed JavaScript based on javascript_lib framework and a stylesheet"
    def gen(template_engine, view_path, javascript_lib)
      AjaxBoxLogin::AjaxBoxLoginGen.gen_files(template_engine, view_path, javascript_lib)
    end    
  end
end