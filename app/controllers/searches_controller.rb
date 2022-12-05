class SearchesController < ApplicationController
  def index
    @all_searches = Search.group(:query).pluck('query, count(query) as COUNT').sort_by { |_, count| -count }
    @total_searches = Search.all.count
  
   
    @groups = Search.select(:query).group(:query).count.sort_by { |_, count| -count }

  end
end
