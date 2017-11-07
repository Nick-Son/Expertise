class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :expert, foreign_key: { to_table: :users }
      t.references :client, foreign_key: { to_table: :users }
      t.datetime :time
      t.integer :duration
      t.integer :rate_per_hour
      t.string :location
      t.string :charge_identifier

      t.timestamps
    end
  end
end
