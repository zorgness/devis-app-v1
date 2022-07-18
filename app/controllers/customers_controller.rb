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

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path, notice: 'Customer was successfully destroyed.'
  end

  private

  def customer_params
    params.require(:customer).permit(:email, :first_name, :last_name, :address, :address_2, :phone)
  end
end
