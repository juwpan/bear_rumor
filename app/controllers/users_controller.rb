class UsersController < ApplicationController
  before_action :set_user, only: %i[show destroy]
  before_action :user_params, only: %i[create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect root_path, flash[:notice] = "Good"
    else
      render :new, flash[:alert] = "Error"
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:name, :surname, :nickname, :age, :avatar, :gender, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
