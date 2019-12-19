class TopController < ApplicationController

  def index
    @brands = Brand.search(params[:search])
  end
  
  def search
    return nil if params[:keyword] == ""
    @brands = Brand.where(['name LIKE ?', "%#{params[:keyword]}%"] )
    respond_to do |format|
      format.html
      format.json
    end
  end

end
