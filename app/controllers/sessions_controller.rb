class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    current_user = params[:name]
    if current_user == nil || current_user.empty?
      redirect_to login_path
    else
      redirect_to
    end
  end

  def destroy
    if current_user
      current_user.destroy
    end
  end

end
