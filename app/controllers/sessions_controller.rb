class SessionsController < ApplicationController

  def new
  end

  def

  def show
    
  end

  def create
    current_user = params[:name]
    if current_user == nil || current_user.empty?
      render :new
    else
      render :show
    end
  end

  def destroy
    if current_user
      current_user.destroy
    end
  end

end
