class BrandsController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end

  def show
    @brand = Brand.find(params[:id])
    @brewages = @brand.brewages.where(params[:brand_id])
    @brand_id = Brand.find(params[:id]).id
    if user_signed_in?
      @user_id = current_user.id
    end
  end

end
