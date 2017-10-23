class CreateCleaners < ActiveRecord::Migration[5.0]
  def change
    create_table :cleaners do |t|
      t.string :email
      t.boolean :active
      t.string :name
      t.string :phone_number
      t.integer :rate
      t.references :cleaner_provider, foreign_key: true

      t.timestamps
    end
  end
end
