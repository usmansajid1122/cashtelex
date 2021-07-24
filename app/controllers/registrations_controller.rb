class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_update_path_for(resource)
         # when update admin redirect to settings(edit_admin_path) instead of root page.
        edit_admin_registration_path
    end
end