crumb :root do
  link "Sakemo！", root_path
end

#  brand
crumb :brand do |brand|
  brand = Brand.find(params[:id])
  link "銘柄： #{brand.name}", brand_path(brand)
end

# brewage
crumb :brewages_new do |brewage|
  link "銘柄の登録", new_brand_brewage_path
  # parent :brand
end

crumb :brewages_show do |brewage|
  link "#{brewage.name}", "#"
  # parent :brand
end

crumb :feelings_new do |feeling|
  link "呑んだきろく"
  # parent :brand
end

crumb :feelings_edit do |feeling|
  link "呑んだきろくの編集"
  parent :brand
end

# user
crumb :mypage do
  link "マイページ", user_path(current_user)
end

crumb :clips do
  link "保存した銘柄", user_clips_path(current_user)
  parent :mypage
end

crumb :login do
  link "ログイン", login_path
end

crumb :passwords_edit do
  link "パスワードをお忘れの方", edit_user_password_path
end

crumb :signup do
  link "新規登録", signup_path
end

crumb :users_edit do
  link "アカウント設定", edit_user_registration_path
  parent :mypage
end

