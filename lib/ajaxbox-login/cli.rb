require 'thor' 
require 'ajaxbox-login/ajaxbox-login'

module AjaxBoxLogin
  class CLI < Thor
    desc "gen VIEWTYPE VIEWPATH JAVASCRIPTLIB", "generates view partial of VIEWTYPE in VIEWPATH, along with needed JavaScript based on JAVASCRIPTLIB framework and a stylesheet"
    def gen(view_type, view_path, js_lib)
      puts AjaxBoxLogin::AjaxBoxLoginGen.gen_files(view_type, view_path, js_lib)
    end    
  end
end