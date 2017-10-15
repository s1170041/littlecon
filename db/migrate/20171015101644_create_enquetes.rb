class CreateEnquetes < ActiveRecord::Migration[5.1]
	def change
		create_table :enquetes do |t|
			t.integer :user_id
			t.timestamps
		end
	end
end
