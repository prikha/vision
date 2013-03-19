# Vision
## Install it using Gemfile

`gem 'vision', :git=>'git://github.com/prikha/vision.git'`

##Generators

###Vision:
####installation
  `rails g vision:install` - the one and the only MUSTRUN generator
  oh and don`t forget awesome RedactorJS
  
  `rails g redactor:install --devise` - to make sure you have persoanlized assets! 
####assets
  `vision:assets` - delivers you assets from the engine to for customization
  
      `vision:css` - delivers only CSS
      
      `vision:js` - delivers only JS
  
  `vision:layout` - get the layout
  
####make it dance
  `vision:resource` - generates new resource in your admin interface
  
  `vision:views`  - overrides views for customization

Админка доступна по адресу /vision и резервирует под себя этот путь включая vision_path











This project rocks and uses MIT-LICENSE.
