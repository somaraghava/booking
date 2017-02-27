class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.text :username
      t.string :age
      t.string :email
      t.integer :phone
      t.text :country
      t.date :date
      t.integer :passengers
      t.boolean :meals
    end
  end
end
