class UsersController < ApplicationController
  def new
    @title = t "users.new"
    @user = User.new
  end

  def index 
    if !superuser? 
      :flash[:error] = "You have been put to this page intentionally."
      redirect_to root_path
    else  
      @title = t "users.index"
      @users = User.all
    end 
  end

  def show
    @user = User.find(params[:id])
    @title = t("users.show") + @user.name
  end

  def create
    @user = User.new(params[:user])
    @user.access_level=0
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to "/contact"
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
