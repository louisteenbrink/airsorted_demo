class Cleaner < ApplicationRecord
  belongs_to :cleaner_provider, optional: true
end
