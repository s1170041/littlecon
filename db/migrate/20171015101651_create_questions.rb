class CreateQuestions < ActiveRecord::Migration[5.1]
	def change
		create_table :questions do |t|
			t.integer :euquete_id
			t.string :title
			t.string :detail
			t.timestamps
		end
	end
end
