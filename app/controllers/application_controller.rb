class ApplicationController < ActionController::Base
  	#For Locale
#  	around_action :with_locale


	# CanCanCan expects a current_user method to exist in the controller
	# - > include CanCan 
	include CanCan::ControllerAdditions
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception


#private
#  def with_locale
#    I18n.with_locale(params[:locale]) { yield }
#  end
#
#  def default_url_options(options = {})
#    { locale: I18n.locale }
#  end
end
