class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :set_locale

  def set_locale
    I18n.locale =  extract_locale_from_subdomain
    if    (I18n.locale.to_s.include?('cn')) then
           I18n.locale = 'zh-CN'
    elsif (I18n.locale.to_s.include?('se')) then 
           I18n.locale = 'sv-SE'
    end
  end


private


  def extract_locale_from_subdomain
    request.subdomains.first ? parsed_locale = request.subdomains.first : parsed_locale = 'de'
    if    (parsed_locale.to_s.include?('cn')) then
           parsed_locale = 'zh-CN'
    elsif (parsed_locale.to_s.include?('se')) then
           parsed_locale = 'sv-SE'
    end
    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale  : "de"
  end
end
