class AddLeadReferenceToListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :listings, :lead, foreign_key: true
  end
end
