class UsersController < ApplicationController
 # Taking all values in the User model and saving it to the @users global variable
  
  def show
    @users = User.all
  end

 # Finding a user by the id in the User Table and saving it to the users variable
  def profile
    user = User.find(params[:id])
        
  end

end
