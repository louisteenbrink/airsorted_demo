class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.text :address
      t.boolean :email_sent
      t.text :first_name
      t.text :last_name
      t.text :referrer
      t.date :time_last_active
      t.integer :signup_stage

      t.timestamps
    end
  end
end
