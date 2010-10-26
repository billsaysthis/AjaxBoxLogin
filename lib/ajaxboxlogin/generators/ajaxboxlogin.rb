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
        puts "AjaxBoxLogin file generation completed"
      end
      
      def copy_view(view_type, view_path)
        template("base.html.#{view_type}", "app/views/#{view_path}/_ajaxbox_login.html.#{view_type}")
        puts "Generated partial _ajaxbox_login.html.#{view_type} in app/views/#{view_path}/"
      end
      
      def copy_js(js_lib)
        js_lib.downcase!
        case js_lib
          when 'protoype'
            copy_js_prototype
          when 'jquery'
            copy_js_jquery
        else 
          puts "Generator only supports Prototype and jQuery at this time"
        end
        puts "Generated ajaxboxlogin.js dependent on #{js_lib} in public/javascripts/"
      end
      
      def copy_js_prototype
        template("base.protoype.js", "public/javascripts/ajaxboxlogin.js")
      end
      
      def copy_js_jquery
        template("base.jquery.js", "public/javascripts/ajaxboxlogin.js")
      end

      def copy_css(view_type)
        view_type.downcase!
        case view_type
        when 'haml'
          copy_css_haml
        when 'erb'
          copy_css_erb
        else
          puts "View type must be either HAML or ERB"
        end
      end
      
      def copy_css_haml
        template("base.scss", "app/stylesheets/ajaxboxlogin.scss")
        puts "Generated ajaxboxlogin.scss in app/stylesheets/"
      end
      
      def copy_css_erb
        template("base.css", "public/stylesheets/ajaxboxlogin.css")
        puts "Generated ajaxboxlogin.css in public/stylesheets/"
      end
      
      def self.source_root
        File.dirname(__FILE__) + "/ajaxboxlogin"
      end
    end
  end
end