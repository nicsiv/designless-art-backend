class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end 

    def show
      user = User.find_by(id: params[:id])
      render json: user
      
    end 

    def auth
      user = User.find_or_create_by(username: params[:username])
      render json: user
    end

end
