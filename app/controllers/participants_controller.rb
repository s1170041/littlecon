class ParticipantsController < ApplicationController
  	before_action :authenticate_user!

	def new
		@participant = Party.find(params[:party_id]).participants.new
	end

	def create
		@participant = Party.find(params[:party_id]).participants.new(participant_params)
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
		respond_to do |format|
			format.html { redirect_to participants_url, notice: 'Participant was successfully destroyed.' }
		end
	end

	private
	def set_participant
		@participant = Party.find(params[:party_id]).participants
	end

	def participant_params
		params.fetch(:participant, {}).permit(
			:user_id,
			:entry_count,
			:hoby,
			:self_pr,
			)
	end
end
