class CreateFootPrints < ActiveRecord::Migration[5.1]
	def change
		create_table :foot_prints do |t|
			t.integer :user_id
			t.integer :visitor_id

			t.timestamps
		end
		
		add_index :foot_prints, :user_id
	end
end
