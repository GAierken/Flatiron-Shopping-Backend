class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end 
    
    def create
        
    end 


    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :email)
    end 
end
