class EmployeesController < ApplicationController

    def new 
        @employee = Employee.new
    end

    def create 
        employee = Employee.create(params.require(:employee).permit(:name, :title, :company_id))
        redirect_to company_path(employee.company_id)
    end

    def delete 

    end

end
