class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article=Article.new
  end

  def edit
  end

  def create

    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      # A opção pelo "render" e não "redirect_to" é porque o redirect_to iria realizar uma nova requisição da
      #varicavel @article. Já o render, mantem a mesma requisição do objeto.
      render 'new'
    end

      #Gera um "hash" com os parametros recebidos do formulário article.
      #render plain: params[:article].inspect
      #Hash gerada:
      #<ActionController::Parameters {"title"=>"First Article!", "text"=>"This is my first article."} permitted: false>
  end

  def update
  end

  def destroy
  end

end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
