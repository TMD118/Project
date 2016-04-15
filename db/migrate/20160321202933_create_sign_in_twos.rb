class CreateSignInTwos < ActiveRecord::Migration
  def change
    create_table :sign_in_twos do |t|
      t.string :name
      t.string :password
      t.integer :doctorID

      t.timestamps null: false
    end
  end
end
