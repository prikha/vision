module Vision
  module Generators
    class JsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Create  javascripts/vision/application.js file "
      def copy_view_files
        directory 'javascripts', "app/assets/javascripts"
      end
    end
  end
end