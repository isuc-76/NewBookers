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

    end

    def user

    end

    def destroy

    end

    private
    def user_params
        params.require(:user).permit(:name)
    end

end
