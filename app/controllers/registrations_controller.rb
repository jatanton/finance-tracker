class User::RegistrationsController < Devise::RegistrationsController
   before_filter :configure_required_parameters
   
   protected
   
   def configure_required_parameters
       devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name)
       devise_parameter_sanitizer.for(:account_update).push(:first_name, :last_name)
   end
end