class CreateSignUpOnes < ActiveRecord::Migration
  def change
    create_table :sign_up_ones do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :username
      t.string :email
      t.string :phoneno
      t.string :cellno
      t.string :city
      t.datetime :dateofbirth
      t.string :password
      t.string :confirmpassword

      t.timestamps null: false
    end
  end
end
