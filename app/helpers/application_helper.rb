module ApplicationHelper
  
  def title
    @title == nil ?  "kaffeelogistik.com" : "kaffeelogistik.com | #{@title}"
  end

  def known_languages
    [ "de", "en", "fr", "se", "pl", "ru", "cn" ]
  end

  def langswitch_linkto_helper(to_lang)
    "http://#{to_lang}.app.com:#{request.env['SERVER_PORT']}#{request.env['PATH_INFO']}"
  end 
end
