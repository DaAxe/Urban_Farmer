class AdminController < ApplicationController

    def index
        @users = User.all
    end
    
# Method to delete user
# Check is done for admin's email
    def destroy
        if current_user.email == "admin@email.com"
          User.destroy(params[:id])
          redirect_to admin_path
        else
          flast[:alert] = "Oops, looks like you are lost, go back!"
        end
      end

end
