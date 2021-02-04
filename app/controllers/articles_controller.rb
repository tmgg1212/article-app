class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :show, :update, :destroy]
  impressionist :actions=> [:show]

  def index
    @articles = Article.all.order(created_at: :desc)
    @articles = Article.page(params[:page]).per(12)
    
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    impressionist(@article, nil, unique: [:session_hash])
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end


  def destroy
    if @article.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def pv_ranking
    @pv_ranking = Imagepost.find(Impression.group(:impressionable_id).order('count(impressionable_id) desc').limit(3).pluck(:impressionable_id))
  end


  private

  def article_params
    params.require(:article).permit(:title, :text, :category_id, :image).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
