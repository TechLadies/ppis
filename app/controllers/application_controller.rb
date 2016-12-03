class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a? Admin
      admin_root_path
    elsif params[:event_id]
      event_path(params[:event_id])
    else
      my_root_path
    end
  end
end
