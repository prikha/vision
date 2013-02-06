#coding:utf-8
module Vision::ApplicationHelper
  ## метод для button_to с bootstrap icon внутри
  #
  # пример (текст из локали, класс иконки, опции кнопки)
  #
  # <%= icon_button_to( t(".save"), "icon-ok-sign",{url_for} {type: 'submit', class: "btn-large btn-success aligned")} %>
  def icon_button_to_tag(text,icon_type=" ", options={})
    button_tag(options) do
      content_tag( :i, " " ,:class=>icon_type)+" "+text
    end
  end


  ## метод для button_tag с bootstrap icon внутри
  #
  # пример (текст из локали, класс иконки, опции кнопки)
  #
  # <%= icon_button_tag( t(".save"), "icon-ok-sign", type: 'submit', class: "btn-large btn-success aligned") %>
  def icon_button_tag(text,icon_type=" ", *options)
    button_tag(*options) do
      content_tag( :i, " " ,:class=>icon_type)+" "+text
    end
  end

  ## метод для link_to с bootstrap icon внутри
  #
  # пример (текст из локали, класс иконки, опции ссылки)
  #
  # <%= icon_link_to(t("layouts.top_menu.logout"), "icon-eject", destroy_user_session_path, :method =>:delete) %>
  def icon_link_to(text,icon_type=" ", *options)
    link_to(*options) do
      content_tag( :i, " " ,:class=>icon_type)+" "+text
    end
  end


  def user_name
    current_user.try(:email) || current_user.id
  end

end
