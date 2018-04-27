class PhotosController < ApplicationController
  def index
    @user = User.find(flash[:notice])
    redirect_to action: "show", id: @user.id
  end

  def list
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

  end



end