module Vision
  module Generators
    class ResourceGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      argument :resource_name, :type => :string
      desc "Creates a vision resource_controller"

      def create_resource_controller
        template 'resource_controller.rb', "app/controllers/vision/#{resource_name.tableize}_controller.rb"
      end

      def add_route_to_vision_namespace
        inject_into_file 'config/routes.rb', "resource #{resource_name.tableize}",after: "namespace :vision do\n"
      end

      def add_menu_item
        inject_into_file 'config/vision.rb', "primary.item :#{resource_name}, '#{resource_name}', #{resource_name.tableize}_path", after:"navigation.items do |primary|\n"
      end

    end
  end
end