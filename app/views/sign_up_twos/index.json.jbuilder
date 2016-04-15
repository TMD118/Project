json.array!(@sign_up_twos) do |sign_up_two|
  json.extract! sign_up_two, :id, :firstname, :middlename, :lastname, :username, :PMDCno, :email, :phoneno, :cellno, :dateofbirth, :password, :confirmpassword, :speciality, :city, :institution, :officehourstart, :officehourend
  json.url sign_up_two_url(sign_up_two, format: :json)
end
