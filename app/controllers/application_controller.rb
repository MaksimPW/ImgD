class ApplicationController < ActionController::Base
	# CanCanCan expects a current_user method to exist in the controller
	# - > include CanCan 
	include CanCan::ControllerAdditions
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
