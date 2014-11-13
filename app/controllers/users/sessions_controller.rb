class Users::SessionsController < Devise::SessionsController


  protected

  # The path used after sign in.
  def after_sign_in_path_for(resource)
    venues_path
  end
end
