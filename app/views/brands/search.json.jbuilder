json.array! @brands do |brand|
  json.id brand.id
  json.name brand.name
  json.image brand.image
  json.name_kana brand.name_kana
end