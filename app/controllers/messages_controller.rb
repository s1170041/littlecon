class MessagesController < ApplicationController
	before_action :set_message, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

	def index
		@messages = current_user.messages.includes(:message_details)
	end

	def show
		@message = Message.find(params[:id])
	end

	def new
		@message = Message.new
    	@message.message_details.build
	end
	
	def edit
	end

	def create
		# @message = current_user.messages.new(message_params)
		@message = current_user.messages.new(message_params)

		if @message.save
			redirect_to action: 'index', notice: 'Message was successfully created.'
		else
			render :new
		end
	end

	def update
		if @message.update(message_params)
			redirect_to @message, notice: 'Message was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@message.destroy
		redirect_to messages_url, notice: 'Message was successfully destroyed.' 
	end

	private
	def set_message
		@message = Message.find(params[:id])
	end

	def message_params
		params.require(:message).permit(:subject, message_details_attributes: [:id, :read])

	end

end