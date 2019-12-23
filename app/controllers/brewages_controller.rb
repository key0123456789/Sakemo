class BrewagesController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
    @brewage = @brand.brewages.find(params[:brand_id])
  end

  def new

  end

  def create

  end

end
