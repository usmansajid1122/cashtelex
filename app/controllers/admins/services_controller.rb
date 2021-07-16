class Admins::ServicesController < ApplicationController
  before_action :authenticate_admin!
  before_action :get_service
  layout "admin"

  def edit; end

  private

  def get_service
    @service = Service.find(params[:id])
  end
end
