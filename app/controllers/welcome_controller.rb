class WelcomeController < ApplicationController
  def index
	#mylog = Logger.new("#{Rails.root}/log/mylog.log")
	#mylog.info('hello world')
	Rails.logger.info('hello world')
  end
end
