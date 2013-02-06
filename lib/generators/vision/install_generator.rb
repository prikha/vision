module Vision
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a vision_navigation configuration"
      def copy_config_files
        copy_file 'vision_navigation.rb', 'config/vision_navigation.rb'
      end
    end
  end
end