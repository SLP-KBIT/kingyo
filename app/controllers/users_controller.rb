class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    user = User.new
    user.account      = params['user']['account']
    user.mail_address = params['user']['mail_address']
    user.save
    redirect_to users_path
  end
end