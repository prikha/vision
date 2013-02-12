module Vision
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Create a vision layout "
      def copy_view_files
        directory 'layouts', "app/views/layouts"
      end
    end
  end
end