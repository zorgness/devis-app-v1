class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to elements_path, notice: 'Activity was successfully destroyed.'
  end

  private

  def activity_params
    params.require(:activity).permit(:name)
  end
end
