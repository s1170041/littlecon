class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  before_action :authenticate_user!

  # GET /profiles/1
  # GET /profiles/1.json
  def show

  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = current_user.profile.new(profile_params)
    
    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: '新規にプロフィールを作成しました。' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def profile_top
    if current_user.profile.nil?
      redirect_to :action => "new"
    else
      redirect_to :action => "show", id:current_user.id
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.fetch(:profile, {})
    end
end
