class NytService
  class << self
    def get_lists
      response = conn.get("/svc/books/v3/lists/names.json")
      parse_data(response)
    end 

    def list(category)
      response = conn.get("/svc/books/v3/lists/current/#{category}.json")
      parse_data(response)
    end 

    private 

    def conn 
      Faraday.new("https://api.nytimes.com") do |x|
        x.params['api-key'] = ENV['ny_times_api_key']
      end 
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 