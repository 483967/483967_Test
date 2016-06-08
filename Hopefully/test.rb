

require 'httparty'
require 'net/http'
require 'nokogiri'

class Test
  def initialize
   puts 'ben'
  end
  def url_selected
    return method_for_url
  end

  def method_for_url
  response = RestClient.get("https://en.wikipedia.org/wiki/Category:Trees_of_Europe")
  noko = Nokogiri::HTML(response.body)
  debugger
    puts response
  end

  def response_jsonpath(response, path)
    path = JsonPath.new(path)
    return path.on(response)
  end

end