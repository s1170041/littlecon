class CreateProfiles < ActiveRecord::Migration[5.1]
	def change
		create_table :profiles do |t|
			t.integer :user_id
			t.string  :nic_name
			t.integer :age, default: 20
			t.integer :postal_code #郵便番号
			t.string  :address1
			t.string  :address2
			t.integer :job_type
			t.integer :annual_income, default: 3
			t.integer :height, default: 3
			t.integer :garments
			t.string  :blood_type			
			t.integer :smoke_flag
			t.integer :drink_type
			t.integer :favorite_stations			
			t.boolean :monday
			t.boolean :tuesday
			t.boolean :wednesday
			t.boolean :thursday
			t.boolean :friday
			t.boolean :saturday
			t.boolean :sunday
			t.integer :target_min_age, default: 20
			t.integer :target_max_age, default: 40
			t.boolean :marriage_history
			t.integer :ng_list
			t.string  :self_pr
			t.timestamps
		end
	end
end
