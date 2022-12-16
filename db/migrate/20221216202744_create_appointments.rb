class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :rating
      t.integer :clown_id
      t.integer :user_id

      t.timestamps
    end
  end
end
