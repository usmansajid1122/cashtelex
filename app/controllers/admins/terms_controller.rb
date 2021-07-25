class Admins::TermsController < ApplicationController
  before_action :authenticate_admin!
  before_action :get_term
  layout "admin"

  def edit; end

  def update
    if @term.update_attributes(term_attributes)
      redirect_to edit_admins_term_path(@term), notice: "Terms and condition updated successfully."
    else
      render action: "edit"
    end
  end

  private

  def get_term
    @term = Term.find(params[:id])
  end

  def term_attributes
    params.require(:term).permit(:title, :content)
  end
end
