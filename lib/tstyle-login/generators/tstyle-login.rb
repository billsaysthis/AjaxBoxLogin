require 'thor/group' 

module TStyleLogin
  module Generators
    class TStyleLoginGen < Thor::Group
      include Thor::Actions
      
      argument :view_type, :type => :string
      argument :view_path, :type => :string
      
      # def create_group
      # end
      
      def copy_view
        template("base.html.#{view_type}", "app/views/#{view_path}/_tstyle_login.html.#{view_type}")
      end
      
      def copy_js
        template("base.js", "public/javascripts/tstyle-login.js")
      end
      
      def copy_css
        if view_type == 'haml'
          template("base.scss", "app/stylesheets/tstyle-login.scss")
        else
          template("base.css", "public/stylesheets/tstyle-login.css")
        end
      end
      
      def self.source_root
        File.dirname(__FILE__) + "/tstyle-login"
      end
    end
  end
end