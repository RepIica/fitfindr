class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name]|| params[:name].empty?
      redirect_to(controller: 'users', action: 'new')
    else
      session[:username] = params[:username]
      redirect_to(controller: 'users', action: 'show')
    end
  end

  def destroy
    session.delete :username
    redirect_to(controller: 'users', action: 'new')
  end

end
