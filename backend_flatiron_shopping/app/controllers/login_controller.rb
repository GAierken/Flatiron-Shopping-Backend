class LoginController < ApplicationController

    def create
      user=User.find_by(username: params[:username]) 
      if user && user.password_digest == params[:password_digest]
        render json:user
      else  
        render json:{errors: ["wrong username or password"]}, status: :unprocessable_entity
      end 
      
    end
  
  end