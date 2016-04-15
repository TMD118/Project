json.array!(@sign_in_twos) do |sign_in_two|
  json.extract! sign_in_two, :id, :name, :password, :doctorID
  json.url sign_in_two_url(sign_in_two, format: :json)
end
