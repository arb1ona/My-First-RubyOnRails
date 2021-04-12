class CommentsController < ApplicationController

    def create
        @book = Book.find(params[:book_id])
        @comment = @book.comments.create(comment_params)
  
        if @comment.save
            redirect_to @book
        end
    end
  
    def destroy
     @book = Book.find(params[:book_id])
     @comment = Comment.find(params[:id])
  
     @comment.destroy
  
     redirect_to @book
  
    end
  
  