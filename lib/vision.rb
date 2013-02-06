require "vision/engine"



#GEMS REQUIRE!
require 'haml-rails'
require 'kaminari'
require 'bootstrap-kaminari-views'
require 'redactor-rails'
require 'carrierwave'
require 'mini_magick'
require 'simple_form'
require 'simple_form_fancy_uploads'
require 'simple-navigation'
SimpleNavigation::config_file_paths << File.expand_path("../../config", __FILE__)
require 'inherited_resources'
require 'has_scope'
require 'devise'
require 'cancan'

module Vision
  mattr_accessor :title
end

Vision.title= "Vision Dashboard"
