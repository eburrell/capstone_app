class Api::CitiesController < ApplicationController
  

  def index
    @cities = City.all
    render "index.json.jb"
  end
  
  def show
    @city = City.find(params[:id])
    render "show.json.jb"
  end

  def create
    @city = City.new(
      id: params[:id],
      name: params[:name],
      state: params[:state],
    )
    if @city.save
      render "show.json.jb"
    else
      render json: {errors: @city.errors.fullmessages}, status: 422
    end
  end

  def destroy
    city = City.find(params[:id])
    city.destroy

    render json: {message: "This City has been deleted."}
  end
end
