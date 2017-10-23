class CreateCleanerProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :cleaner_providers do |t|
      t.string :name
      t.string :email
      t.boolean :internal
      t.string :address
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
