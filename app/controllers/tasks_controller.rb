class TasksController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @collection = ['pose', 'installation', 'creation', 'destruction', 'réagréage' ]
    @task = Task.new
  end

  def create
    @room = Room.find(params[:room_id])
    @task = Task.new(task_params)
    @task.room = @room
    if @task.save
      redirect_to @room.quotation
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @quotation = @task.room.quotation
    @task.destroy
    redirect_to quotation_path(@quotation), notice: 'Task was successfully destroyed.'
  end

  private

  def task_params
    params.require(:task).permit(:name, :room_id, :product_id, :activity_id, :element_id, :number_of_items, :m2)
  end
end
