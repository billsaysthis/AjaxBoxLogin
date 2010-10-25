require 'thor' 
require 'tstyle-login/tstyle-login'

module TStyleLogin
  class CLI < Thor
    desc "gen VIEWTYPE VIEWPATH JAVASCRIPTLIB", "generates view partial of VIEWTYPE in VIEWPATH, along with needed JavaScript based on JAVASCRIPTLIB framework and a stylesheet"
    def gen(view_type, view_path, js_lib)
      puts TStyleLogin::TStyleLoginGen.gen_files(view_type, view_path, js_lib)
    end    
  end
end