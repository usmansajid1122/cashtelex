class Admins::AboutUsController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def edit
    @about_us = About.find(params[:id])
  end
end
