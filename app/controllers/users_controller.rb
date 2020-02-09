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
        if
        @user.update(user_params)
        flash[:notice] = "You have updated user successfully."
        redirect_to homes_path(@user.id)
        end
    end

    def destroy

    end

    private
    def user_params
        params.require(:user).permit(:name, :introduction, :profile_image)
    end

end
