class BrandsController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end

  def show
    @brand = Brand.find(params[:id])
    @brewages = @brand.brewages.where(params[:brand_id])
    @brand_id = Brand.find(params[:id]).id
    @feelings = @brand.feelings.order(created_at: :DESC).where(params[:brand_id])
    if user_signed_in?
      @user = User.find(current_user.id)
      @user_id = current_user.id
      @user_feeling = Feeling.find_by(brand_id: @brand_id, user_id: current_user.id)
    end
  end

end
