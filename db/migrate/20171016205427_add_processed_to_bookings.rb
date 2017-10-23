class AddProcessedToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :processed, :boolean
  end
end
