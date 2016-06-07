

class Test

  def url_selected
    method
  end

  def method
  response = fetch("https://en.wikipedia.org/wiki/Category:Trees_of_Europe")
  noko = Nokogiri::HTML(response.body)
  require 'debugger'; debugger
  end

  def response_jsonpath(response, path)
    path = JsonPath.new(path)
    return path.on(response)
  end

end