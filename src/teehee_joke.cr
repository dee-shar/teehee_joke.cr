require "json"
require "http/client"

class TeeheeJoke
  API_PATH = "api/joke"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://teehee.dev")
    @http_client = HTTP::Client.new(uri)
  end

  def get_joke() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}", headers: @headers).body)
  end
end
