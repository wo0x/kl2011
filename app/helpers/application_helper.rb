module ApplicationHelper

  def langswitch_linkto_helper(to_lang)
    "http://#{to_lang}.app.com:#{request.env['SERVER_PORT']}#{request.env['PATH_INFO']}"
  end 
end
