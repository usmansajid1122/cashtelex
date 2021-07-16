class Admins::TermsController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def edit
    @term = Term.find(params[:id])
  end
end
