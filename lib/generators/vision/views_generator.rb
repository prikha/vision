module Vision
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      argument :resource_name, :type => :string
      desc "Creates a vision resource_controller"
      def copy_view_files
        directory 'resource', "app/views/vision/#{resource_name.tableize}"
      end
    end
  end
end