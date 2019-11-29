module ApplicationHelper

  def api_call
    require 'json'
    require 'open-uri'

    url = 'https://api.github.com/users/ssaunier'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
  end

end
