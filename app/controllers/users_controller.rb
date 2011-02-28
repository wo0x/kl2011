class UsersController < ApplicationController
  def new
    @title = t "users.new"
  end

  def show
    @title = t "users.show"
    @user = User.find(params[:id])
  end

end
