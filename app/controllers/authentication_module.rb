
module AuthenticationModule

  def redirect_to_stored_or(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

  def is_admin?
    return current_user && current_user.id == 1
  end

  private
  def current_user_session
    return @current_user_session if defined?@current_user_session
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def require_user
    if current_user
      params[:user_id] = current_user.id
    else
      store_location
      redirect_to login_path
      return false
    end
  end

  def store_location
    session[:return_to] = request.request_uri
  end
end