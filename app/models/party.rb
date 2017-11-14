class Party < ApplicationRecord
  	has_many :participants
  	has_many :users, through: :participants

	length_text = "文字数は%{count}文字以内でお願いします"
	validates :title, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :venue, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :venue_address, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :prefecture, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :city, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :max_age_man, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :min_age_man, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :min_age_women, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :max_participant_count, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	# validates :open_time, presence: { message: "タイトルが入力されていません" }, length:   { maximum: 50, message: length_text }
	
end
