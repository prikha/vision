$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "vision/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "vision"
  s.version     = Vision::VERSION
  s.authors     = ["Serj Prikhodko"]
  s.email       = ["sergey@zengile.com"]
  s.homepage    = "http://github.com/prikha/vision"
  s.summary     = "Vision is a Rails Way dashboard, built as a simple alternative to ActiveAdmin."
  s.description = "Vision is a Rails Way dashboard, built as a simple alternative to ActiveAdmin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 3.2.11'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jquery-ui-rails'

#TEMPLATES
  s.add_dependency 'haml-rails'
  s.add_dependency 'twitter-bootstrap-rails'

##PAGINATION
  s.add_dependency 'kaminari'
  s.add_dependency 'bootstrap-kaminari-views'

##WYSIWYG EDITOR
  s.add_dependency 'redactor-rails'
  s.add_dependency 'carrierwave'
  s.add_dependency 'mini_magick'

##VIEW HELPERS
  s.add_dependency 'simple_form'
  s.add_dependency 'simple_form_fancy_uploads'

##NAVIGATION CONFIGURATION AND RENDERING
  s.add_dependency 'simple-navigation'

#ACCESS MANAGEMENT
  s.add_dependency 'inherited_resources'
  s.add_dependency 'has_scope'
  #s.add_dependency 'devise'
  s.add_dependency 'cancan'

  s.add_dependency 'less-rails'
  s.add_dependency 'less'
  s.add_dependency 'uglifier'

  s.add_dependency 'execjs'
  s.add_dependency 'therubyracer'

end
