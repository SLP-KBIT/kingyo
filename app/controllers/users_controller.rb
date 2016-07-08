# -*- coding: utf-8 -*-
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
  def destroy
   User.find(params[:id]).destroy
   flash[:success] = "User deleted"
   redirect_to users_url
  end
  #管理者かどうかの確認
  def is_admin
   redirect_to(root_url) unless current_user.admin?
  end
end
