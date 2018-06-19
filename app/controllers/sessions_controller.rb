class SessionsController < ApplicationController
  def new

  end

  def create
    #byebug
    @user = User.find_by(email: params[:user][:email])
    if !@user #&& (!params[:user][:email] || params[:user][:email].empty?)
      redirect_to '/login'
    else
      #byebug
      # redirect_to :forbidden unless @user.authenticate(params[:password])
      # authenticated = @user.try(:authenticate, params[:password])
      # return head(:forbidden) unless authenticated

      session[:name] = @user.name
      byebug
      redirect_to user_path(@user)#(controller: 'users', action: 'show')
    end
  end

  def forbidden

  end

  def destroy
    session.delete :username
    redirect_to(controller: 'users', action: 'new')
  end



end
