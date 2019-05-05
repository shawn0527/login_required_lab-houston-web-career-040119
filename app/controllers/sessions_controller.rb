class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    session[:name] = params[:name]
    if current_user == nil || current_user.empty?
      redirect_to login_path
    else
      redirect_to secrets_show_path
    end
  end

  def destroy
    if current_user
      current_user.destroy
    end
  end

end
