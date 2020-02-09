class BooksController < ApplicationController

    def new
    	@book = Book.new
    end

    def create
    	@book = Book.new(book_params)
	    @book.user_id = current_user.id
	    if @book.save
	    	flash[:notice] = "Book was successfully created."
	    redirect_to book_path(@book)
		else
			@books = Book.all
			render action: :index
		end
    end

    def index
    	@books = Book.all
    	@book = Book.new
        @user = current_user
    end
    
    def show
        @book = Book.find(params[:id])
        # def indexと同じ名前は使えない
        @showbook= Book.new
        # @bookの内容をそのまま下の右辺に代入、@bookに入っているuser情報を取り出している。
        @user = @book.user
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        if
        @book.update(book_params)
        flash[:notice] = "Book was successfully created."
        redirect_to book_path(@book.id)
        else
            render action: :edit
        end
    end



    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to action: :index
    end

    private
    def book_params
        params.require(:book).permit(:title, :body)
    end

end
