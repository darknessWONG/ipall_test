class ChangesController < ApplicationController
  def self.create (employee,ipadd)
    @@change = Change.new(employee:employee, ipadd:ipadd)
    @@change.save
  end
 
  def index
    @change = Change.all
    #@employee = Array.new
    #@ipad = Array.new
    #@ip = Array.new
    #@change.each do |change|
    #  @employee.push(change.employee)
    #  if change.ipadd.nil?
    #    redirect_to employees_path
    #  else
    #    @ipad.push(change.ipadd)
    #    @ip.push(change.ipadd.ip)
    #  end
    #end 
  end 
end
