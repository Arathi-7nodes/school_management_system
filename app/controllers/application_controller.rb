class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource_or_scope)
    # binding.pry
    if resource_or_scope.has_role? :principal
      users_url
    else
      root_url
    end
  end

  protect_from_forgery with: :exception
  layout :layout_by_resource
  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
