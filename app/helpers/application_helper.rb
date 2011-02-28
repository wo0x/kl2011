module ApplicationHelper
  
  def title
    @title == nil ?  "kaffeelogistik.com" : "kaffeelogistik.com | #{@title}"
  end

  def langswitch_linkto_helper(to_lang)
    "http://#{to_lang}.app.com:#{request.env['SERVER_PORT']}#{request.env['PATH_INFO']}"
  end 

  def known_languages
    [ "de", "en", "fr", "se", "pl", "ru", "cn" ]
  end

  def known_language_names(lang)
    t = { "de" => "de", "en" => "en", "fr" => "fr", "se" => "sv", "pl" => "pl", "ru" => "ру", "cn" => "中文" }
    t[lang]
  end


end
