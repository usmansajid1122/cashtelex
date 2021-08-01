class Admins::ServiceProvidersController < ApplicationController
  before_action :authenticate_admin!
  before_action :get_service
  before_action :get_service_provider, except: :index
  skip_before_action :verify_authenticity_token, only: :get_states

  layout "admin"

  def index
    @service_providers = @service.service_providers.order(id: :desc)
  end

  def new; end 

  def create
    @service_provider.assign_attributes(service_provider_attributes)
    if @service_provider.save
      redirect_to action: :index
    else
      render action: :new
    end
  end 

  def show; end 

  def edit; end 
    
  def update
    if @service_provider.update_attributes(service_provider_attributes)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    if @service_provider.destroy
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  # post: /service/:service_id/service_providers/get_states
  def get_states
    country_code = params[:country_code] || "US"
    @states = ISO3166::Country[country_code].states.map { |state| [state[1]['name'], state[0]] }
    @selected_state = params[:state]
  end

  private

  def get_service
    @service = Service.find(params[:service_id])
  end

  def get_service_provider
    if params[:id].present?
      @service_provider = @service.service_providers.find(params[:id])
    else
      @service_provider = @service.service_providers.build
    end
  end

  def service_provider_attributes
    params.require(:service_provider).permit(:name, :country, :state, :city, :zipcode, :address, :description, :quantity, :price_in_gram, :price_in_btc, :price_in_ctlx)
  end
end
