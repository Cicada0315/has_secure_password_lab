class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(name: params[:user][:name])
    #if user && user.password == params[:user][:password]
    if user && user.authenticate(params[:user][:password])
      session[:user_id]=user.id
    else
      redirect_to '/signup'
    end
  end

  def destory
  end
end
