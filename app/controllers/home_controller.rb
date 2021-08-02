class HomeController < ApplicationController
  layout "website"

  def index
  end

  def about_us
  end

  def contact_us
  end

  def cashtelex_exchange
  	@service = Service.find_by_id(1)
  end

  def cashtelex_go
  	@service = Service.find_by_id(2)
  end

  def cashtelex_real_estate
  	@service = Service.find_by_id(3)
  end

  def cashtelex_gold
  	@service = Service.find_by_id(4)
  end

  def cashtelex_coin
  	@service = Service.find_by_id(5)
  end

end
