class UserController < ApplicationController
  def index
    @users = User.all
    @size = @users.size
  end

  def move
    @userId = params[:type]
    flash[:notice] = @userId
    redirect_to photos_index_url
  end
end
