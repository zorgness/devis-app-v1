class QuotationsController < ApplicationController
  def index
    @quotations = Quotation.where(user_id: current_user.id)
  end

  def show
    @quotation = Quotation.find(params[:id])
  end

  def pdf
    @quotation = Quotation.find(params[:id])
    html_string = render_to_string(
      {
        template: 'quotations/pdf.html.erb',
        locals: { id: params[:id] }
      }
    )
    pdf = Grover.new(html_string, format: 'A4', display_url: "http://localhost:3000").to_pdf
    respond_to do |format|
      format.html
      format.pdf do
        send_data(pdf, disposition: 'inline', filename: "DEVIS_ID_#{params[:id]}", type: 'application/pdf')
      end
    end
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

  def edit
    @quotation = Quotation.find(params[:id])
  end

  def update
    @quotation = Quotation.find(params[:id])
    @quotation.update(quotation_params)
    redirect_to quotation_path(@quotation)
  end

  def destroy
    @quotation = Quotation.find(params[:id])
    @quotation.destroy
    redirect_to quotations_path, notice: 'Quotation was successfully destroyed.'
  end

  private

  def quotation_params
    params.require(:quotation).permit(:number, :date, :customer_id, :total_price)
  end
end
