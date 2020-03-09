class UsersController < ApplicationController
  def show
    @users = User.all
  end

  def profile
    user = User.find(params[:id])
        
  end

end
