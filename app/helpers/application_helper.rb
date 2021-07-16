module ApplicationHelper
  def current_class_on_tab(tab_name = "")
    return "active" if controller_name == tab_name
  end

  def service_title(title, title_part)
    title_arr = title.split(" ")
    if title_part == "first"
      title_arr.first(title_arr.count - 1).join(" ")
    else
      title_arr.last
    end
  end
end
