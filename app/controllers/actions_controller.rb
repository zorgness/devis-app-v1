class ActionsController < ApplicationController
  def index
    @actions = Action.all
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.new(action_params)
    p action_params
    if @action.save
      redirect_to actions_path
    else
      render :new
    end
  end

  def destroy
    @actions = Action.find(params[:id])
    @actions.destroy
    redirect_to actions_path, notice: 'Action was successfully destroyed.'
  end

  private

  def action_params
    params.require(:action).permit(:name)
  end
end
