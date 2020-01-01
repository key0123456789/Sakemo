crumb :root do
  link "Sakemo！", root_path
end

#  brand
crumb :brand do |brand|
  link "#{brand.name}", brand_path(brand)
  # if current_page?(controller: "brands", action: "show", id: "#{params[:brand_id]}")
  #   brand = Brand.find(params[:id])
  # else
  #   brand = Brand.find(params[:brand_id])
  # end
  # link "日本酒： #{brand.name}", brand_path(brand)
end

# brewage
crumb :brewage_new do |brewage|
  link "銘柄の登録", new_brand_brewage_path
  # parent :brand
end

crumb :brewage_show do |brewage|
  link "#{brewage.name}", "#"
  # parent :brand
end

# user
crumb :mypage do
  link "マイページ", user_path(current_user)
end

crumb :login do
  link "ログイン", login_path
end

crumb :signup do
  link "新規登録", signup_path
end
