class Api::ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
    render "index.json.jb"
  end

  def show
    # @reviews = current_user.reviews
    @review = Review.find(params[:id])
    render "show.json.jb"
  end

  def create
    @review = Review.new(
      id: params[:id],
      accessibility: params[:accessibility],
      cost: params[:cost],
      quality: params[:quality],
      safety: params[:safety],
      entertainment: params[:entertainment],
      user_id: params[:user_id],
      city_id: params[:city_id]
      )
    if @review.save
      render "show.json.jb"
    else
      render json: {errors: @review.errors.full_messages}, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])
    @city = @review.city

    @review.id = params[:id] || @review.id
    @city.name = params[:city] || @city.name
    @city.state = params[:state] || @city.state
    @review.accessibility = params[:accessibility] || @review.accessibility
    @review.cost = params[:cost] || @review.cost
    @review.safety = params[:safety] || @review.safety
    @review.entertainment = params[:entertainment] || @review.entertainment
    @review.user_id = params[:user_id] || @review.user_id
    @review.city_id = params[:city_id] || @review.city_id
    if @review.save
      @city.save
      render "show.json.jb"
    else
      render json: {errors: @review.errors.full_messages}, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy

    render json: {message: "This Review has been deleted."}
  end

end

