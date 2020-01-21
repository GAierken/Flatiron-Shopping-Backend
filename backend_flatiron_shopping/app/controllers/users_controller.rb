class UsersController < ApplicationController
    def index
        users = User.all 
        render json:users
    end 

    def show
        user = User.find(params[:id])
        render json:user
    end 

    def create
        
        user=User.create(user_params)
        byebug
        if user.valid?
            render json: user
        else 
            render json:{errors: user.errors.full_messages}, status: :unprocessable_entity
        end 
        
        
    end 

    # def update
    #     user=User.find(params[:id])
    #     user.update(user_params)

    #     render json: user
    # end 

    # def destroy
    #     user=User.find(params[:id])
    #     user.destroy
    #     render json: user
    # end 

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :email)
    end 

end
