class Booking < ApplicationRecord
  belongs_to :listing, optional: true
  enum status: [:to_prepare, :prepared, :keys_handover, :to_clean, :cleaned]
end
