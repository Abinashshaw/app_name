class EmployeesController < ApplicationController
  def index
    @employees =  Employee.all.order(name: :asc).limit(50)
    respond_to do |format|
      format.html
      format.pdf { send_data @employees.to_pdf}
    end
  end

  def show
    
  end
end
