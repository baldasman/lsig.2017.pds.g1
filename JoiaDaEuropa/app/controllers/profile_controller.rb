class ProfileController < ApplicationController

  def index

    @user = current_user

  end

  def list

    @profile = Profile.where(id: current_user.profile_id)

  end

  def show

    @profile = Profile.find_by(id: params[:id])

  end

  def new

    @profile = Profile.new
    @errors = flash[:errors]

  end

  def create

    @profile = Profile.new profile_params
    @profile.profile_id = current_user.profile_id
    #@profile.status = 'pending'

    if @profile.save
      redirect_to profile_show_path(@profile.id)
    else
      flash[:errors] = @profile.errors.messages
      redirect_to profile_new_path
    end

  end

  def edit
    @profile = Profile.find_by(id: current_user.profile_id)
  end

  def update
    @profile = Profile.find_by(id: current_user.profile_id)
    @profile.update_attributes profile_params
    if @profile.save
      redirect_to profile_edit_path(@profile.id)
    else
      flash[:errors] = @profile.errors.messages
    end
  end

  def delete
    Profile.find(params[:id]).destroy
    redirect_to profile_list_path
  end

  private

  def profile_params
    params.require(:profiles).permit(:nickname, :gender, :birth, :telephone)
  end

end