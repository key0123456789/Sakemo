class BrandsController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end

  def show
    @brand = Brand.find(params[:id])
    @brewages = @brand.brewages.where(params[:brand_id])
    # @user_id = current_user.id
    @brand_id = Brand.find(params[:id]).id
  end

end
