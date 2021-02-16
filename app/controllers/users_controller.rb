class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:username, :password_digest]
      end 
end
