class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @clip_brands = current_user.brands.order(updated_at: :DESC)
    # @clip_brands = current_user.brands.order(updated_at: :DESC).page(params[:page]).per(20)
    @user_feelings = Feeling.where(user_id: current_user.id).includes(:brand).order(updated_at: :DESC)
    @feeling_pages = @user_feelings.page(params[:page]).per(20)
  end
end
