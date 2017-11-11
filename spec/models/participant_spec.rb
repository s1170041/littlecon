require 'rails_helper'

RSpec.describe Participant, type: :model do

	describe "hello method" do
		before do
			participant = Participant.new
			participant.hoby = "テスト 太郎"
			participant.entry_count = 11
			participant.self_pr = ""
			participant.save
			@participant = participant
		end
		context "normal case." do
			it "not null" do
				expect(@participant.hello).not_to be_nil
			end
		end
	end
end


