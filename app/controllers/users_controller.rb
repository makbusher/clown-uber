class UsersController < ApplicationController
  # def index
  #   users = User.all
  #   render json: users.as_json
  # end

  # def show 
  #   user = User.find_by(id: params[:id])
  #   render json: user.as_json
  # end

  def create 
    user = User.new(
      name: params[:name]
    )
    user.save
    render json: user.as_json
  end
end
