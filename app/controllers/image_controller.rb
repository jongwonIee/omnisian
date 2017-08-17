class ImageController < ApplicationController
  # $이거 붙이면 전역변수됨 ㅇㅇ
  $img_url = nil

  def img_upload
    uploader = ImgUploader.new
    uploader.store!(params[:img])
    Image.create(url: uploader.url, date: Date.today, order_id: 1)
    $img_url = uploader.url
    redirect_to root_path
  end
end

