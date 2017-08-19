class HomeController < ApplicationController
  @@img_url = nil

  def index
  end

  def upload
    if params[:img].has_key?
      uploader = ImgUploader.new
      uploader.store!(params[:img])
      @@img_url = uploader.url
    end
  end

  def seed
    Rails.application.load_seed
  end
end
