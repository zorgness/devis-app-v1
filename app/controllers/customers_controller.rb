class CustomersController < ApplicationController
  def index
    @customers = Customer.where(user_id: current_user.id)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.user = current_user
    if @customer.save
      redirect_to @customer
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:email, :first_name, :last_name, :address, :address_2, :phone)
  end
end
