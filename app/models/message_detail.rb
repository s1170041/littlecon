class MessageDetail < ApplicationRecord
	belongs_to :message, optional: true
end