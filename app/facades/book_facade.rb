class BookFacade
  class << self
    def get_book_info(isbn)
      BookService.book_info(isbn)
    end 
  end 
end 