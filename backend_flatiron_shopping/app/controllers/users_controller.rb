class UsersController < ApplicationController
    def index
        users = User.all 
        render json:users
    end 

    def show
        
        if token_user_id == params[:id].to_i
           user = User.find(params[:id])
           render json:user
        else  
            render json: {errors: "you are not authorized"}, status: :unauthorized
    end 

    def create
        
        user=User.create(user_params)
       
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
