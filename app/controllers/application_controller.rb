class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
   def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
 
 def after_sign_in_path_for(resource)
 	stored_location_for(resource) || new_students_path
 end

 def after_sign_out_path_for(resource_or_scope)
 	wel_path
 end

end
