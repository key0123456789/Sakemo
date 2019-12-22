class BrandsController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end

  def show
    @brand = Brand.find(params[:id])
  end

end
