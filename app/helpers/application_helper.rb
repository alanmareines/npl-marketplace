module ApplicationHelper

  def api_call
    require 'json'
    require 'open-uri'

    url = 'https://api.github.com/users/ssaunier'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
  end

  def capitalize(string)
    if string.nil?
      "-"
    else
      string.split.map { |word| word.length > 2 ? word.capitalize : word.downcase }.join(" ")
    end
  end

  def not_nil(input)
    if input.nil?
      "-"
    else
      input
    end
  end
end
