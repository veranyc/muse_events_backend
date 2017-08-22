class Api::V1::UsersController < ApplicationController

    def index
      @users = User.all
      render json: @users, status: 200
    end

    def create
      @user = User.new(user_params)

      if !!@user.save
        @user.save
        created_jwt = issue_token(id: @user.id)
        render json: { username: @user.username, jwt: created_jwt }
      else
        render json: {errors: @user.errors.full_messages}
      end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      render json: @user, status: 200
    end

    def delete
      @user = User.find(params[:id])
      @user.destroy
      render json: {message:"Your user has been deleted", userId:userId}
    end

    def show
      render json: @user, status: 200
    end

    private
    def user_params
      params.permit(:username)
    end


  end
