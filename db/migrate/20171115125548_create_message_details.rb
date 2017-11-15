class CreateMessageDetails < ActiveRecord::Migration[5.1]
	def change
		create_table :message_details do |t|
			t.integer :message_id
			t.text :detail
			t.boolean :read, default: false #未読		
			t.timestamps
		end
		add_index :message_details, :message_id
	end
end
