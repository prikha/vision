module Vision
  module Generators
    class ResourceGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      argument :resource_name, :type => :string
      desc "Creates a vision resource_controller"

      def create_resource_controller
        template 'resource_controller.rb.erb', "app/controllers/vision/#{resource_name.tableize}_controller.rb"
      end

      def add_route_to_vision_namespace
        inject_into_file 'config/routes.rb', "resources :#{resource_name.tableize}\n",after: "# vision routes\n"
      end

      def add_menu_item
        inject_into_file 'config/vision_navigation.rb', "\nprimary.item :#{resource_name}, '#{resource_name}', vision_#{resource_name.tableize}_path\n", after:"navigation.items do |primary|\n"
      end

    end
  end
end