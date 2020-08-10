class EmployeesController < ApplicationController

    def new 
        @employee = Employee.new
    end

    def create 
        @employee = Employee.new(employee_params)
        if !@employee.valid?
            render :new
        else 
            @employee.save
            redirect_to company_path(@employee.company_id)
        end
    end

    def destroy 
        @company = Employee.find(params[:id]).company
        Employee.destroy(params[:id])
        redirect_to company_path(@company)
    end

    def show
        @employee = Employee.find(params[:id])
    end

    private 
    
    def employee_params
        params.require(:employee).permit(:name, :title, :company_id)
    end
end
