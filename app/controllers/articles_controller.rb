class ArticlesController < ApplicationController
  def new
  end

  def create

      #Gera um "hash" com os parametros recebidos do formulário article.
      render plain: params[:article].inspect
  end
end
