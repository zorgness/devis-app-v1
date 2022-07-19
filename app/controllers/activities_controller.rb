class ActivitiesController < ApplicationController
  def index
    @activities = Activity.where(user_id: current_user.id)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
    if @activity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path, notice: 'Activity was successfully destroyed.'
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :user_id)
  end
end
