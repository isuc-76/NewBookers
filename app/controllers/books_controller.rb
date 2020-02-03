class BooksController < ApplicationController

    def new
    end

    def create
	    @book = PostImage.new(post_image_params)
	    @book.user_id = current_user.id
	    @book.save
	    redirect_to book_path
    end

    def index
    end
    
    def show
    end

end
