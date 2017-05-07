class ArticlesController < ApplicationController

	def index
		@articles = Article.all

		@article_published = Article.where('published =?',true)
		@article_unpublished = Article.where('published =?',false)
		
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
      		redirect_to article_path(@article), notice: "Successfully created Article"
      	else
      		render action: "new"
      	end
    end

    def show
    	@article = Article.find(params[:id])
    end

    def edit
    	@article = Article.find(params[:id])
    end

    def update
    	@article = Article.find(params[:id])
    	if @article.update_attributes(article_params)
    		redirect_to article_path(@article), notice: "Successfully updated Article"
    	else
    		render action: "edit"
    	end
    end

    def destroy
    	@article = Article.find(params[:id])
		if @article.destroy
			redirect_to articles_path, notice: "Successfully deleted Article"
		else
			redirect_to :back
		end
	end

	private
		def article_params
			params[:article].permit(:title, :body, :published, :published_date, category_ids: [])
		end


end

