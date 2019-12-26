class BrewagesController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
    @brewage = @brand.brewages.find(params[:brand_id])
  end

  def new
    redirect_to login_url unless user_signed_in?
    @brand = Brand.find(params[:brand_id])
    @brewage = Brewage.new
  end
  
  def create
    @brand = Brand.find(params[:brand_id])
    @brewage = Brewage.create(brewage_params)
    redirect_to brand_brewage_path(@brewage, @brand)
  end

  private

  def brewage_params
    params.require(:brewage).permit(:id, :name, :image).merge(brand_id: params[:brand_id])
  end
end
