class Api::UsersController < ApplicationController

  def show
    @user = current_user
    render "show.json.jb"
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      city_id: params[:city_id]
    )

    if @user.save
      render "show.json.jb"
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end
  
  def update
    @user = User.find(params[:id])
    if current_user == @user
      @user.id = params[:id] || @user.id
      @user.first_name= params[:first_name] || @user.first_name
      @user.last_name = params[:last_name] || @user.last_name
      @user.username = params[:username] || @user.username
      if params[:password] 
        @user.password = params[:password] 
      end
      @user.zip_code = params[:zip_code] || @user.zip_code
      @user.city_id = params[:city_id] || @user.city_id
      if @user.save
        render "show.json.jb"
      else
        render json: {errors: @user.errors.full_messages}, status: 422
      end
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user == @user
      @user.destroy

      render json: {message: "This User has been deleted."}
    else
      render json: {error: "Wrong User."}, status: 422
    end
  end
end
