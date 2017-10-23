class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :accomodates
      t.text :address
      t.integer :bathrooms
      t.integer :bedrooms
      t.integer :beds
      t.integer :bookings_count
      t.text :photo

      t.timestamps
    end
  end
end
