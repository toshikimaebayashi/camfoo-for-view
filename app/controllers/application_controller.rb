class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  def basic
    authenticate_or_request_with_http_basic do |name, password|
    name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
  end
  end
  
  def set_current_user
    @current_user = current_user.id
  end
  
end
