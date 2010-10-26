require 'thor' 
require 'ajaxboxlogin/ajaxboxlogin'

module AjaxBoxLogin
  class CLI < Thor
    desc "gen view_path view_path javascript_lib", "generates view partial of view_type in view_path, along with needed JavaScript based on javascript_lib framework and a stylesheet"
    def gen(view_type, view_path, javascript_lib)
      AjaxBoxLogin::AjaxBoxLoginGen.gen_files(view_type, view_path, javascript_lib)
    end    
  end
end