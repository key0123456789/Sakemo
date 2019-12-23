class BrandsController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end

  def show
    @brand = Brand.find(params[:id])
    @brewages = @brand.brewages.where(params[:brand_id])
  end

end
