class MessageDetailsController < ApplicationController
  before_action :set_message_detail, only: [:show, :edit, :update, :destroy]

  # GET /message_details
  # GET /message_details.json
  def index
    @message_details = MessageDetail.all
  end

  # GET /message_details/1
  # GET /message_details/1.json
  def show
  end

  # GET /message_details/new
  def new
    @message_detail = MessageDetail.new
  end

  # GET /message_details/1/edit
  def edit
  end

  # POST /message_details
  # POST /message_details.json
  def create
    @message_detail = MessageDetail.new(message_detail_params)

    respond_to do |format|
      if @message_detail.save
        format.html { redirect_to @message_detail, notice: 'Message detail was successfully created.' }
        format.json { render :show, status: :created, location: @message_detail }
      else
        format.html { render :new }
        format.json { render json: @message_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_details/1
  # PATCH/PUT /message_details/1.json
  def update
    respond_to do |format|
      if @message_detail.update(message_detail_params)
        format.html { redirect_to @message_detail, notice: 'Message detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_detail }
      else
        format.html { render :edit }
        format.json { render json: @message_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_details/1
  # DELETE /message_details/1.json
  def destroy
    @message_detail.destroy
    respond_to do |format|
      format.html { redirect_to message_details_url, notice: 'Message detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_detail
      @message_detail = MessageDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_detail_params
      params.fetch(:message_detail, {})
    end
end
