module ApplicationHelper
  def current_class_on_tab(tab_name = "", service_id = nil)
    if controller_name == "services"
      return "active" if service_id.to_i == params[:id].to_i
    else
      return "active" if tab_name == controller_name
    end
  end

  def service_title(title, title_part)
    title_arr = title.split(" ")
    if title_part == "first"
      title_arr.first(title_arr.count - 1).join(" ")
    else
      title_arr.last
    end
  end

  def service_image_path service_title
    case service_title
    when "CashTelex Exchange"
      return  "img-2/store.png"
    when "CashTelex Go"
      return  "img-2/store.png"
    when "CashTelex Real Estate"
      return  "img-2/store.png"
    when "CashTelex Gold"
      return  "img-2/gold.png"
    when "CashTelex Coin"
      return  "img-2/store.png"
    end
  end
end
