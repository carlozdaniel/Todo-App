class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new,:create,:edit,:update,:destroy]

  
  def index
    @articles = Article.all
    respond_to do |format|
      format.html
      format.json
      format.csv { send_data @articles.to_csv }
      format.pdf {render template: 'articles/doc', pdf: 'doc'}
    end  
  end

  def show
  
  end 

  def edit
  end
  
  
  def update
    @article.update(params[:article])
    redirect_to @article   
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.create(article_params)
    redirect_to @article
  end

  def destroy
  
    @article.destroy 
    redirect_to root_path
  end

  def from_author
    @user = User.find(params[:user_id])
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title,:content)
  end
  
end   
