class CreateParticipants < ActiveRecord::Migration[5.1]
	def change
		create_table :participants do |t|
			t.integer :user_id
			t.integer :party_id
			t.timestamps
		end
		add_index :participants, :party_id
		
	end
end
