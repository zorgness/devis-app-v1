class QuotationsController < ApplicationController
  def index
    @quotations = Quotation.where(user_id: current_user.id)
  end

  def show
    @quotation = Quotation.find(params[:id])
  end

  def new
    @customers = Customer.where(user_id: current_user.id)
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)
    @quotation.user = current_user
    if @quotation.save
      redirect_to @quotation
    else
      render :new
    end
  end

  private

  def quotation_params
    params.require(:quotation).permit(:number, :date, :customer_id, :total_price)
  end
end
