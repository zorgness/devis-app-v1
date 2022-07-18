class ElementsController < ApplicationController
  def index
    @elements = Element.all
  end

  def new
    @element = Element.new
  end

  def create
    @element = Element.new(element_params)
    if @element.save
      redirect_to elements_path
    else
      render :new
    end
  end

  def destroy
    @element = Element.find(params[:id])
    @element.destroy
    redirect_to elements_path, notice: 'Element was successfully destroyed.'
  end

  private

  def element_params
    params.require(:element).permit(:name)
  end
end
