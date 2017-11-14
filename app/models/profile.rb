class Profile < ApplicationRecord
	has_one :user
  	has_many :participants
  	has_many :parties, through: :participants

	enum job_type: { it: 0, hoge: 1, hogehoge: 2 }
end
