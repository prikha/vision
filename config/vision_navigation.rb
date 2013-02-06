# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.dom_class = 'nav nav-pills nav-stacked bs-docs-sidenav'

    primary.item :home, 'Home', vision_root_path

  end

end
