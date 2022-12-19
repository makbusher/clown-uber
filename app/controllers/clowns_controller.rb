class ClownsController < ApplicationController
  def index 
    clowns = Clown.all 
    render json: clowns.as_json 
  end

  def show 
    clown = Clown.find_by(id: params[:id])
    render json: clown.as_json
  end

  def create
    clown = Clown.new(
      name: params[:name],
      specialty: params[:specialty]
    )
    clown.save
    render json: clown.as_json
  end

  def update
    clown = Clown.find_by(id: params[:id])
    clown.name = params[:name] || clown.name
    clown.specialty = params[:specialty] || clown.specialty 
    clown.save
    render json: clown.as_json
  end

  def destroy
    clown = Clown.find_by(id: params[:id])
    clown.destroy
    render json: {message: "This clown has been removed."}
  end

end
