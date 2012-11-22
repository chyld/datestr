class PhotosController < ApplicationController
  before_filter :ensure_logged_in
  def index
  end
  def show
    @photo = Photo.find(params[:id])
  end
  def new
    @photo = Photo.new
  end
  def create
    @auth.photos << Photo.create(params[:photo])
    redirect_to photos_path
  end
  def primary
    old = Photo.where(:is_primary => true).first
    if old
      old.is_primary = false
      old.save
    end

    photo = Photo.find(params[:id])
    photo.is_primary = true
    photo.save

    redirect_to photos_path
  end
  private
  def ensure_logged_in
    redirect_to root_path if @auth.nil?
  end
end
