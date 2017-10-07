class AddColumsToParty < ActiveRecord::Migration[5.1]
	def change
		add_column :parties, :venue, :string
		add_column :parties, :venue_address, :string
		add_column :parties, :prefecture, :string
		add_column :parties, :city, :string
		add_column :parties, :male_fee, :string
		add_column :parties, :women_fee, :string
		add_column :parties, :max_age, :integer
		add_column :parties, :min_age, :integer
		add_column :parties, :max_participant_count, :integer
		add_column :parties, :open_time, :datetime
		add_column :parties, :deleted, :boolean, null: false, default: false
	end
end