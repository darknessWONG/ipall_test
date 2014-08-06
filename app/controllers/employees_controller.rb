class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def index
    @employee = Employee.all
  end

  def create
    @employee = Employee.new(params[:employee].permit(:name))
    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(params[:employee].permit(:name))
      redirect_to @employee
    else
      render 'edit'
    end
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  def choose
    @employee = Employee.find(params[:id])
  end
end
