class Vision::ApplicationController < ApplicationController
  protect_from_forgery

  #rescue_from CanCan::AccessDenied do |exception|
  #  redirect_to admin_root_url, :alert => exception.message
  #end

  before_filter :authenticate_user!
end