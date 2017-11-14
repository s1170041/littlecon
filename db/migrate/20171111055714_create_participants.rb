class CreateParticipants < ActiveRecord::Migration[5.1]
	def change
		create_table :participants do |t|
			t.integer :profile_id
			t.integer :party_id
			t.integer :entry_count, null: false, default: 1 #参加人数
			t.string :hoby
			t.string :self_pr
			t.timestamps
		end
		add_index :participants, :party_id
		
	end
end
