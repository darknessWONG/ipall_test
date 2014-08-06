class UploadController < ApplicationController
  before_action :set_charset

  def upload
  end

  def set_charset
	headers["Content-Type"]="text/html;charset=UTF-8"
  end

  def uploadFile(file)
	if !file.original_filename.empty?
		@filename=getFileName(file.original_filename)
	  	#@filename = file.original_filename
		File.open("#{Rails.root}/public/upload/#{@filename}",'wb+') do |f|
		f.write(file.read)
	  end
	  return @filename
	end
  end

  def getFileName(filename)
	if !filename.nil?
	  Time.now.strftime("%Y_%m_%d_%H_%M_%S") + '_' + filename
	end
  end

  def save
	unless request.get?
	  if filename=uploadFile(params[:file1]['file1'])
	  render :text=>filename
	  end
	end
  end

  def downloadlist
	@list = []
	Dir.foreach("#{Rails.root}/public/upload") do |file|
		Rails.logger.info(file)
		@list << file
	end
  end

  def download
	file = params[:file]
	send_file("#{Rails.root}/public/upload/#{file}.txt")
  end
end
