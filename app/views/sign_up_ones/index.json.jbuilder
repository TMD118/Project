json.array!(@sign_up_ones) do |sign_up_one|
  json.extract! sign_up_one, :id, :firstname, :middlename, :lastname, :username, :email, :phoneno, :cellno, :city, :dateofbirth, :password, :confirmpassword
  json.url sign_up_one_url(sign_up_one, format: :json)
end
