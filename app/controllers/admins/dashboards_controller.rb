class Admins::DashboardsController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def index
  end
end
