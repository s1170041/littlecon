class FootPrintsController < ApplicationController
  before_action :set_foot_print, only: [:show, :edit, :update, :destroy]

  # GET /foot_prints
  # GET /foot_prints.json
  def index
    @foot_prints = FootPrint.all
  end

  # GET /foot_prints/1
  # GET /foot_prints/1.json
  def show
  end

  # GET /foot_prints/new
  def new
    @foot_print = FootPrint.new
  end

  # GET /foot_prints/1/edit
  def edit
  end

  # POST /foot_prints
  # POST /foot_prints.json
  def create
    @foot_print = FootPrint.new(foot_print_params)

    respond_to do |format|
      if @foot_print.save
        format.html { redirect_to @foot_print, notice: 'Foot print was successfully created.' }
        format.json { render :show, status: :created, location: @foot_print }
      else
        format.html { render :new }
        format.json { render json: @foot_print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foot_prints/1
  # PATCH/PUT /foot_prints/1.json
  def update
    respond_to do |format|
      if @foot_print.update(foot_print_params)
        format.html { redirect_to @foot_print, notice: 'Foot print was successfully updated.' }
        format.json { render :show, status: :ok, location: @foot_print }
      else
        format.html { render :edit }
        format.json { render json: @foot_print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foot_prints/1
  # DELETE /foot_prints/1.json
  def destroy
    @foot_print.destroy
    respond_to do |format|
      format.html { redirect_to foot_prints_url, notice: 'Foot print was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foot_print
      @foot_print = FootPrint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foot_print_params
      params.fetch(:foot_print, {})
    end
end
