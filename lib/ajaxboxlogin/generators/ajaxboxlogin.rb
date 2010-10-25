require 'thor/group' 

module AjaxBoxLogin
  module Generators
    class AjaxBoxLoginGen < Thor::Group
      include Thor::Actions
      
      argument :view_type, :type => :string
      argument :view_path, :type => :string
      argument :js_lib, :type => :string
      
      def gen_files(view_type, view_path, js_lib)
        copy_view(view_type, view_path)
        copy_js(js_lib)
        copy_css(view_type)
        rs = "Generation complete"
        rs
      end
      
      def copy_view(view_type, view_path)
        template("base.html.#{view_type}", "app/views/#{view_path}/_ajaxbox_login.html.#{view_type}")
        puts "Generated partial _ajaxbox_login.html.#{view_type} in app/views/#{view_path}/"
      end
      
      def copy_js(js_lib)
        if js_lib == 'protoype'
          template("base.protoype.js", "public/javascripts/ajaxboxlogin.js")
        else
          template("base.jquery.js", "public/javascripts/ajaxboxlogin.js")
        end
        puts "Generated ajaxboxlogin.js dependent on #{js_lib} in public/javascripts/"
      end
      
      def copy_css(view_type)
        if view_type == 'haml'
          template("base.scss", "app/stylesheets/ajaxboxlogin.scss")
          r = "Generated ajaxboxlogin.scss in app/stylesheets/"
        else
          template("base.css", "public/stylesheets/ajaxboxlogin.css")
          r = "Generated ajaxboxlogin.css in public/stylesheets/"
        end
        puts r
      end
      
      def self.source_root
        File.dirname(__FILE__) + "/ajaxboxlogin"
      end
    end
  end
end