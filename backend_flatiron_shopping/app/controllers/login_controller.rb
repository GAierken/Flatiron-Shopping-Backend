class LoginController < ApplicationController

    def create
      user=User.find_by(username: params[:username]) 
      
      if user && user.authenticate(params[:password])
        render json: {token: make_token(user)}
      elsif user 
        render json:{errors: ["wrong password"]}, status: :unprocessable_entity
      else 
        render json:{errors: ["Please signup!"]}, status: :unprocessable_entity
      end 
      
    end
  
  end