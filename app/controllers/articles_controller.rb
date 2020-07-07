class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all 
    end

    def new 
        @artcile = Article.new
    end

    def create
        @artcile = Article.new(params.require(:article).permit(:title, :description))
        if @artcile.save
            redirect_to @artcile
        else
            render 'new'
        end
    end

end
