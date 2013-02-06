module Vision
  module Generators
    class ResourceGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      argument :resource_name, :type => :string
      desc "Creates a vision resource_controller"
      def copy_config_files
        template 'resource_controller.rb', "app/controllers/vision/#{resource_name.tableize}_controller.rb"
      end
    end
  end
end