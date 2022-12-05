class ArticlesController < ApplicationController
  before_action :check_user_id, only: %i[:search]

  # GET /articles or /articles.json
  def index
    if params[:query].present?
      @articles = Article.where("title LIKE ?", "%#{params[:query]}%")
      Search.create(query: params[:query], user_id: current_user.id)
      
      
    else
      
      @articles = Article.all 
    end

   if turbo_frame_request?
      render partial: "articles", locals: { articles: @articles}
   else
    render :index
   end

 

   def save_search(query, user_id)
    return if query.nil? || query.length < 3

    new_search = Search.new(query: query, user_id: user_id)
    #new_search.user_id = user_id
    #user_search.query = Search.where(user_id: user_id).all.map(&:query)
   end
  
  
  
  
  
  end
  
  end