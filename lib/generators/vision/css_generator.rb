module Vision
  module Generators
    class CssGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Create  stylesheets/vision/application.css file "
      def copy_view_files
        directory 'stylesheets', "app/assets/stylesheets"
      end
    end
  end
end