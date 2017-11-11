class Participant < ApplicationRecord
	belongs_to :party

	# バリデーション
	validates :entry_count,
	presence: { message: "参加人数が入力されていません" }

	validates :hoby,
	presence: { message: "趣味が入力されていません" },
	length:   { maximum: 100, message: "趣味は100文字以内で入力してください" }
	
	validates :self_pr,
	presence: { message: "自己PRが入力されていません" },
	length:   { maximum: 100, message: "自己PRは100文字以内で入力してください" }

	def hello
		self.hoby += "でござる"
	end 
end