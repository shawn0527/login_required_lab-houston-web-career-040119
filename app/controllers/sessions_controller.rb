class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to login_path
    else
      redirect_to secrets_show_path
    end
  end

  def destroy
    if session[:name]
      session.destroy
    end
  end

end
