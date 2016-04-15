class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :prefferedInstitution
      t.string :prefferedDoctor
      t.datetime :fromDate
      t.datetime :toDate
      t.time :prefferedTime
      t.text :detailsOfAilment

      t.timestamps null: false
    end
  end
end
