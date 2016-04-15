class CreateSignInOnes < ActiveRecord::Migration
  def change
    create_table :sign_in_ones do |t|
      t.string :name
      t.string :password

      t.timestamps null: false
    end
  end
end
