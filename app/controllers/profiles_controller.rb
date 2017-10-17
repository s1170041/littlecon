class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show, :edit, :update]
	before_action :authenticate_user!

	def show

	end

	def new
		@profile = Profile.new
	end

	def edit
		@profile = Profile.find(params[:id])
	end

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
	def set_profile
		@profile = Profile.find(params[:id])
	end

	def profile_params
		params.fetch(:profile, {}).permit(
			:nic_name,
			:age,
			:p_id, 
			:city_id,
			:job_type,
			:annual_income,
			:height,
			:garments,
			:blood_type,     
			:smoke_flag,
			:drink_type,
			:favorite_stations,
			:free_week,
			:target_min_age,
			:target_max_age,
			:marriage_history,
			:ng_list,
			:self_pr,
			)
	end
end





