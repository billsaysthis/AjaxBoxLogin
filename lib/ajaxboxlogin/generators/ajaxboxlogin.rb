require 'thor/group' 

module AjaxBoxLogin
  module Generators
    class AjaxBoxLoginGen < Thor::Group
      include Thor::Actions
      
      source_root File.dirname(__FILE__) + "/ajaxboxlogin"

      class_option :template_engine, :type => :string, :aliases => "-t", :default => 'erb', :desc => "Template engine for the views. Available options are 'erb' and 'haml'."
      argument :view_path, :type => :string
      argument :js_lib, :type => :string
      
      def gen_files(view_path, js_lib)
        copy_view(view_path)
        copy_js(js_lib)
        copy_css
        puts "AjaxBoxLogin file generation completed"
      end
      
      def copy_view(view_path)
        template("base/base.html.#{options[:template_engine]}", "app/views/#{view_path}/_ajaxbox_login.html.#{options[:template_engine]}")
        puts "Generated partial _ajaxbox_login.html.#{options[:template_engine]} in app/views/#{view_path}/"
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
        template("base/base.protoype.js", "public/javascripts/ajaxboxlogin.js")
      end
      
      def copy_js_jquery
        template("base/base.jquery.js", "public/javascripts/ajaxboxlogin.js")
      end

      def copy_css
        te = options[:template_engine].downcase
        case te
        when 'haml'
          copy_css_haml
        when 'erb'
          copy_css_erb
        else
          puts "Template engine must be either HAML or ERB"
        end
      end
      
      def copy_css_haml
        template("base/base.scss", "app/stylesheets/ajaxboxlogin.scss")
        puts "Generated ajaxboxlogin.scss in app/stylesheets/"
      end
      
      def copy_css_erb
        template("base/base.css", "public/stylesheets/ajaxboxlogin.css")
        puts "Generated ajaxboxlogin.css in public/stylesheets/"
      end
      
    end
  end
end