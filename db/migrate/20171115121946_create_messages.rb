class CreateMessages < ActiveRecord::Migration[5.1]
	def change
		create_table :messages do |t|
			t.integer :user_id
			t.string :subject
			t.text :detail
			t.boolean :read, default: false #未読
			t.timestamps
		end
	end
end
