class ApplicationController < ActionController::Base
  protect_from_forgery
  def set_locale
    I18n.locale = params[:locale] 
  end

end
