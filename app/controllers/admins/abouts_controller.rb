class Admins::AboutsController < ApplicationController
  before_action :authenticate_admin!
  before_action :get_about
  layout "admin"

  def edit; end

  def update
    if @about.update_attributes(about_attributes)
      redirect_to edit_admins_about_path(@about), notice: "About us updated successfully."
    else
      render action: "edit"
    end
  end

  private
  
  def get_about
    @about = About.find(params[:id])
  end

  def about_attributes
    params.require(:about).permit(:title, :content)
  end
end
