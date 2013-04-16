module Vision::ResourceHelper
  def sortable(column, title = nil)
    title ||= resource_class.human_attribute_name(attr)
    css_class = column == sort_column ? "current #{sort_direction} link-no-decoration" : 'link-no-decoration'
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    direction_class = column == sort_column && sort_direction == "asc" ? "icon-sort-up" : "icon-sort-down"
    link_to params.merge(:sort => column, :direction => direction, :page=>nil), {:class => css_class} do
      content_tag(:span, title) + content_tag(:i, '', class: direction_class)
    end
  end


end
