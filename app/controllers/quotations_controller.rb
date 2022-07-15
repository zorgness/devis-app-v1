class QuotationsController < ApplicationController
  def index
    @quotations = Quotation.where(user_id: current_user.id)
  end

  def show
    @quotation = Quotation.find(params[:id])
  end
end
