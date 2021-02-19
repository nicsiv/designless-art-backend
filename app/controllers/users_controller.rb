class UsersController < ApplicationController
    def index
        users = User.all
        options = {
          include: :easels
    }
        render json: users.to_json(include: :easels)
    end 

    def show
      user = User.find_by(id: params[:id])
      render json: user.to_json(include: :easels )
    end 

    def destroy
      user = User.find_by(id: params[:id])
      user.destroy
      render json: {}
    end

    def auth
      user = User.find_or_create_by(username: params[:username])
      render json: user
    end

end
