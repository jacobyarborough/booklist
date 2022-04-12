class BooksController < ApplicationController
  def discover 
    @categories = NytFacade.get_categories
  end

  def index 
    @books = NytFacade.get_list(params[:category])
  end 

  def show
    @book = BookFacade.get_book_info(params[:isbn])
  end 
end 