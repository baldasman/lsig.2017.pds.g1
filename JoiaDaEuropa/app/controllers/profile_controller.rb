class ProfileController < ApplicationController

  def index

    @user = current_user

  end

  def list
    #@user = current_user
    #@id_usuario = @user.profile_id
    @profiles = profile.where(profile_id: current_user.profile_id) #, status: 'pending'
    #@profiles = profile.where("profile_id = ?", @id_usuario)

  end

  def show

    @profile = profile.find(params[:id])

  end

  def new
    @profile = profile.new
    @errors = flash[:errors]

  end

  def create

    @profile = profile.new profile_params
    @profile.profile_id = current_user.profile_id
    @profile.status = 'pending'

    if @profile.save
      redirect_to profile_show_path(@profile.id)
    else
      flash[:errors] = @profile.errors.messages
      redirect_to profile_new_path
    end

  end

  def edit
    @profile = @profile.find(params[:id])
  end

  def update
    @profile = @profile.find(params[:id])
    profile.update_attributes(profile_param)
  end

  def delete
    profile.find(params[:id]).destroy
    redirect_to profile_list_path
  end

  private

  def profile_params
    params.require(:profile).permit(:delivery_date, :price, :client_comment, :attachment)
  end

end