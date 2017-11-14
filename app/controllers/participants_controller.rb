class ParticipantsController < ApplicationController
  	before_action :authenticate_user!

	def new
		@participant = Party.find(params[:party_id]).participants.new
		@participant.profile_id = current_user.profile.id
	end

	def create
		@participant = Party.find(params[:party_id]).participants.new(participant_params)
		@participant.profile_id = current_user.profile.id

		if @participant.save
			redirect_to party_participant_path(:id => @participant.id), notice: 'エントリーが完了しました。' 
		else
			render :new 
		end
	end

	def show	
	end

	def destroy
		@participant.destroy
		redirect_to participants_url, notice: 'Participant was successfully destroyed.'
	end

	private
	def set_participant
		@participant = Party.find(params[:party_id]).participants
	end

	def participant_params
		params.fetch(:participant, {}).permit(
			:entry_count,
			:hoby,
			:self_pr,
			)
	end
end
