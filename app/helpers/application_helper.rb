module ApplicationHelper
  def current_class_on_tab(tab_name = "")
    return "active" if controller.controller_name == tab_name
  end
end
