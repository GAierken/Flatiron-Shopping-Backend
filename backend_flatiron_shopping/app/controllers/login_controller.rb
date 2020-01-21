class LoginController < ApplicationController

    def create
      user=User.find_by(username: params[:username]) 
      # byebug
    end
  
  end