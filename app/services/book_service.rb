class BookService 
  class << self 
    def book_info(isbn)
      response = conn.get("/api/books?bibkeys=ISBN:#{isbn}&callback=mycallback")
      binding.pry
      parse_data(response)
    end 
    private

    def conn 
      Faraday.new("https://openlibrary.org")
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true )
    end 
  end 
end 