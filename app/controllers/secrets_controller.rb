class SecretsController < SessionsController
  before_action :require_login
  def show
    if session.include? :name == false
      redirect_to login_path
    end
  end

  private

  def require_login
    if session[:name] == nil || session[:name].empty?
    return head(:forbidden) unless session.include? :name
  end
end
