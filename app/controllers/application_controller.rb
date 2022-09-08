class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:type_of_user, :name, :phone, :location, :doctors, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :location, :doctors, :phone, :photo])
  end

  # def after_sing_up_path_for(resource)
  #   if current_user.type_of_user == "Veterinary"
  #     edit_user_registration_path
  #   else
  #     pets_path
  #   end
  # end

  def after_sign_in_path_for(resource)
    # stored_location_for(resource) || welcome_path
    if current_user.type_of_user == "Pet Owner"
      pets_path
    else
      my_appointments_path
    end
  end

  def user_root_path
    if current_user.type_of_user == "Pet Owner"
      pets_path
    else
      vet_profile_path
    end
  end

end
