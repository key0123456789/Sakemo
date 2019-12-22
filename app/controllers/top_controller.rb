class TopController < ApplicationController

  def index
    @brands = Brand.order('name_kana ASC').limit(20)
  end
  
  def search
    keyword = "%#{params[:keyword]}%"
    return nil if params[:keyword] == ""
    @brands = Brand.find_by_sql(['select * from brands where name LIKE ? OR name_kana LIKE ? LIMIT 20', keyword, keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end

  # private

  # def search_params
  #   params.require(:q).permit(:name_cont)
  # end
end
