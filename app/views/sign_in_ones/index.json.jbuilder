json.array!(@sign_in_ones) do |sign_in_one|
  json.extract! sign_in_one, :id, :name, :password
  json.url sign_in_one_url(sign_in_one, format: :json)
end
