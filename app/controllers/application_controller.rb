class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a? Admin
      admin_root_path
    else
      my_root_path
    end
  end

  def after_sign_up_path_for(_resource)
    my_root_path
  end

end
