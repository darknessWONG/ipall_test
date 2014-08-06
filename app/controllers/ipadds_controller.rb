class IpaddsController < ApplicationController
  def create
    @employee = Employee.find(params[:employee_id])
    @ipadd = @employee.ipadds.create(params[:ipadd].permit(:ip))
    redirect_to employee_path(@employee)
  end

  def choose
    @employee = Employee.find(params[:employee_id])
    @ipadd = Employee.find_by_name('kong').ipadds.find(params[:id])
    @employee.ipadds << @ipadd
    ChangesController.create(@employee, @ipadd) 
    redirect_to employee_path(@employee)
  end

  def release
    @employee = Employee.find(params[:employee_id])
    Employee.find_by_name('kong').ipadds << @employee.ipadds.find(params[:id])
    redirect_to employee_path(@employee)
  end
end
