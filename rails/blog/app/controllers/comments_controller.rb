class CommentsController < ApplicationController
	before_action  :authenticate_user! , only: [:create]
	def create 
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id 
		if @comment.save
			redirect_to article_path(@comment.article_id)
		else
			render action: :back
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
			if @comment.destroy
				redirect_to article_path(@comment.article_id)
			else
				render action: :back
			end
	end

	private

	def comment_params
		params[:comment].permit(:title, :description, :article_id)
    end

   end
