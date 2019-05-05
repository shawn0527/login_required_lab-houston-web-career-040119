class SecretsController < SessionsController
  before_action :require_login
  def show
    unless session[:name]
      redirect_to login_path
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
