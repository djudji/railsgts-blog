class CommentsController < ApplicationController
  http_basic_authenticate_with name: "zlatko", password: "mysecret", only: [:destroy]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if @comment.destroy
      redirect_to @article
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :comment_body)
  end
end
