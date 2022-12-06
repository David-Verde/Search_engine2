class ArticlesController < ApplicationController
before_action :check_session, only: %i[:search]
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

  end
end