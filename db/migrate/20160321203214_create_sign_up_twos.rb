class CreateSignUpTwos < ActiveRecord::Migration
  def change
    create_table :sign_up_twos do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :username
      t.integer :PMDCno
      t.string :email
      t.string :phoneno
      t.string :cellno
      t.datetime :dateofbirth
      t.string :password
      t.string :confirmpassword
      t.string :speciality
      t.string :city
      t.string :institution
      t.time :officehourstart
      t.time :officehourend

      t.timestamps null: false
    end
  end
end
