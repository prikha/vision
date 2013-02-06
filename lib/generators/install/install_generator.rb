class Vision::Generators::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  def copy_config_files
    copy_file 'vision_navigation.rb', 'config/vision_navigation.rb'
  end
end
