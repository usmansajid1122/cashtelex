class Admins::ServicesController < ApplicationController
  before_action :authenticate_admin!
  before_action :get_service
  layout "admin"

  def edit; end

  def update
    if @service.update_attributes(service_attributes)
      redirect_to edit_admins_service_path(@service), notice: "#{@service.title} updated successfully."
    else
      render action: :edit
    end
  end

  private

  def get_service
    @service = Service.find(params[:id])
  end

  def service_attributes
    params.require(:service).permit(:title, :content, :banner)
  end
end
