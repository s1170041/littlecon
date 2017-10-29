class Profile < ApplicationRecord
	belongs_to :user
	enum job_type: { it: 0, hoge: 1, hogehoge: 2 }
end
