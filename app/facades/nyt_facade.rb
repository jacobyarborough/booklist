class NytFacade
  class << self
    def get_categories
      NytService.get_lists
    end 

    def get_list(category) 
      NytService.list(category) 
    end 
  end 
end 