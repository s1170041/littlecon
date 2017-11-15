class Message < ApplicationRecord
	belongs_to :user
	has_many :message_details
	accepts_nested_attributes_for :message_details
end
