class CreateProfiles < ActiveRecord::Migration[5.1]
	def change
		create_table :profiles do |t|
			t.integer :user_id
			t.string  :nic_name
			t.integer :age
			t.integer :p_id #都道府県ID
			t.integer :city_id #都道府県ID
			t.integer :job_type
			t.ingeger :annual_income
			t.ingeger :height
			t.ingeger :garments
			t.string  :blood_type			
			t.ingeger :smoke_flag
			t.ingeger :drink_type
			t.ingeger :favorite_stations
			t.ingeger :free_week
			t.ingeger :target_min_age
			t.ingeger :target_max_age
			t.ingeger :marriage_history
			t.ingeger :ng_list
			t.string  :self_pr
			t.timestamps
		end
	end
end
