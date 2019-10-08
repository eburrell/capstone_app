class Api::ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
    render "index.json.jb"
  end

  def show
    @review = Review.find(by params[:id])
    render "show.json.jb"
  end

  def create
    @review = Review.new(
      id: params[:id],
      city_name: params[:city_name],
      accessibility: params[:accessibility],
      cost: params[:cost],
      safety: params[:safety],
      entertainment: params[:entertainment],
      )
    if @review.save
      render "show.json.jb"
    else
      render json: {errors: @review.errors.full_messages}, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])

    @review.id = params[:id]
    @review.city_name = params[:city_name]
    @review.accessibility = params[:accessibility]
    @review.cost = params[:cost]
    @review.safety = params[:safety]
    @review.entertainment = params[:entertainment]
    if @review.save
      render "show.json.jb"
    else
      render json: {errors: @review.errors.full_messages}, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy

    render json: {message: "This Review have been deleted."}
  end

end

