class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: current_user
  end

  def create
    user = User.find_by(username: params[:username])
    if (user.present?)
      created_jwt = issue_token({id: user.id})
      render json: {user: user.id, username: user.username, jwt: created_jwt}
    else
      render json: {
        error: 'Email or password is incorrect'
      }, status: 422
    end
  end

end
