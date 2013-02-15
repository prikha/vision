module Vision
  module Generators
    class AssetsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Create  application.js and application.css files "
      def copy_view_files
        directory 'javascripts', "app/assets/javascripts"
        directory 'stylesheets', "app/assets/stylesheets"
      end
    end
  end
end