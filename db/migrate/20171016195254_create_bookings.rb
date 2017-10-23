class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.integer :extra_bed_required
      t.string :guest_email
      t.string :guest_phone
      t.string :guest_photo
      t.string :nights
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
