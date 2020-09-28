class UsersController < ApplicationController 

    def index 
        users = User.all 
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        end
    end

    private 
    def user_params 
        params.permit(:username)
    end
end