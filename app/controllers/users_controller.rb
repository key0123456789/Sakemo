class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @clip_brands = current_user.brands.page(params[:page]).per(20)
    @user_feelings = Feeling.where(user_id: current_user.id).includes(:brand)
    @feeling_pages = @user_feelings.page(params[:page]).per(20)
  end
end
