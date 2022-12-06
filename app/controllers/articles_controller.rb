class ArticlesController < ApplicationController
before_action :check_session, only: %i[:search]


  # GET /articles or /articles.json
  def index
    if params[:query].present?
      @articles = Article.where("lower(content) LIKE ?", "%#{params[:query].downcase}%")
      new_query = Search.new(query: params[:query], user_id: current_user.id)
    
      if searched?(params[:query], new_query.query)
    new_query.save
      end
      else
      
      @articles = Article.all 
    end
    if turbo_frame_request?
      render partial: "articles", locals: { articles: @articles}
   else
    render :index
   end
  end

 

  def searched?(search, query)
    JaroWinkler.distance(search, query) > 0.8
  end



end


