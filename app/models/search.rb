class Search < ApplicationRecord

    def index 
        @searches = Search.all
    end
    
end
