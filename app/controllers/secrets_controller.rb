class SecretsController < SessionsController
  before_action :require_login
  def show
    if session[:name] == nil || session[:name].empty?
      redirect_to login_path
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
