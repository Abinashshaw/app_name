class CustomersController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def new
    @customer = Customer.new
  end
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "Customer information is saved successfuly"
      redirect_to customer_path(@customer)
    else
      render 'new'
    end
  end
  def show
    @customer = Customer.find(params[:id])
  end
  def edit 
    @customer = Customer.find(params[:id])
  end
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:notice]="Customer information is updated successfully"
      redirect_to customer_path(@customer)
    else
      render 'edit'
    end
  end
  def index
    @customer = Customer.search(params[:search])
  end
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    flash[:notice] = "Customer information is successfully destroyed"
    redirect_to customers_path
  end

  private
    def set_article
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name,:email)
    end
end
