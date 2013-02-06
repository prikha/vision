class RedactorRails::PicturesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @pictures = RedactorRails.picture_model.find_all({:user_id=>current_user.id})
    render :json => @pictures.to_json

  end
  def create
    @picture =current_user.redactor_rails_pictures.build # RedactorRails::Picture.new

    file = params[:file]
    @picture.data = RedactorRails::Http.normalize_param(file, request)

    if @picture.save
      render :text => { :filelink => @picture.url }.to_json
    else
      render :nothing => true
    end
  end

end