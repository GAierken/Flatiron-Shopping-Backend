class JointablesController < ApplicationController
    def index
        jointables = Jointable.all 
        render json: jointables
    end 
    def create
        jointable = Jointable.create(join_params)
        render json: jointable
    end 

    private
    def join_params
        params.require(:jointable).permit(:item_id, :order_id)
    end 
end
