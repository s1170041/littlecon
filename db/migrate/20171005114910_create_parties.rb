class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string :title
      t.integer :venue_type
      t.string :venue
      t.string :venue_address
      t.string :prefecture
      t.string :city
      t.integer :male_fee
      t.integer :women_fee
      t.integer :max_age_man
      t.integer :min_age_man
      t.integer :max_age_women
      t.integer :min_age_women
      t.integer :max_participant_count
      t.datetime :open_time
      t.boolean :open_time, null: false, default: false
      t.timestamps
    end
  end
end
