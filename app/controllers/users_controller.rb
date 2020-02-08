class UsersController < ApplicationController

    def new
    	
    end

    def create

    end

    def index
        @users = User.all
        @book= Book.new
        @user = current_user
    end
    
    def show
		@user = User.find(params[:id])
        @books = @user.books
        @showbook= Book.new
    end

    def edit
        @user = current_user
    end
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end

    def destroy

    end

    private
    def user_params
        params.require(:user).permit(:name, :introduction, :profile_image)
    end

end
