class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    if params[:query].present?
      @articles = Article.where("title LIKE ?", "%#{params[:query]}%")
    else
      @articles = Article.all
    end
  end
  
 

  

 



    



    
  end