class UsersController < ApplicationController
  # before_action :authenticate_user!, except: %i[show index]
  before_action :set_user, only: %i[show destroy update]
  before_action :user_params, only: %i[new create update]

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to current_user, notice: "Фотография обновлена"
    else
      render current_user, alert: "Обновить не удалось"
    end
  end

  def show
  end

  def index
  end

  def destroy
    @user.destroy

    redirect_to root_path, alert: "Пользователь удалён"
  end


  private

  def user_params
    params.require(:user).permit(:name, :nickname, :birth_date, :avatar, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
