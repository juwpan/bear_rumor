class UsersController < ApplicationController
  # before_action :authenticate_user!, except: %i[show index]
  before_action :set_user, only: %i[show destroy update]
  before_action :user_params, only: %i[update]

  def edit
  end

  def update
    params_avatar = params.require(:user).permit(:avatar)
    
    if @user.update(params_avatar)
      redirect_to current_user, notice: "Фото обновлёно"
    elsif @user.update(user_params)
      redirect_to current_user, notice: "Профиль обновлён"
    else
      render current_user, alert: "Обновить не удалось"
    end
  end

  def show
  end

  def index
    @songs = Song.all
    @users = User.all
  end

  def destroy
    @user.destroy

    redirect_to root_path, alert: "Пользователь удалён"
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname, :birth_date, :avatar, :email, :gender)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
