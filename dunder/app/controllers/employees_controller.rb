class EmployeesController < ApplicationController

    before_action :find_emp, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show
        
    end

    def new
        @employee = Employee.new
    end
    
    def create 
        @employee = Employee.new(emp_params)
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
    end

    def update
        @employee.update(emp_params)
        if @employee.save
            redirect_to @employee
        else
            render :edit
        end
    end

    private

    def find_emp
        @employee = Employee.find(params[:id])
    end

    def emp_params
        #(:first_name, :last_name, :alias, :title, :office, :image_url, :dog_id)
        params.require(:employee).permit!
    end
end
