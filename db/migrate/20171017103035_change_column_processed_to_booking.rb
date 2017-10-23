class ChangeColumnProcessedToBooking < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :processed, :string
  end
end
