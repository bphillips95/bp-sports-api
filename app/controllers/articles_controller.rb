class ArticlesController < ApplicationController

    def index 
        articles = Article.all 
        render json: articles
    end
    def show 
        article = Article.find(params[:id])
        render json: article
    end 
    def create 
        article = Article.create(article_params)
        id = article.id
        article_tag = ArticleTag.create(tag_id: params[:tag_id], article_id: id)
        render json: article
    end

    def update 
        article = Article.find(params[:id])
        article.update(article_params)
        render json: article
    end 
    
    def destroy 
        article = Article.find(params[:id])
        article.article_tags.destroy_all
        article.destroy
    end 

    private
    def article_params
        params.require(:article).permit(:title, :content, :user_id)
      end
      def article_tag_params
        params.require(:article_tag).permit(:tag_id, :article_id)
      end
end
