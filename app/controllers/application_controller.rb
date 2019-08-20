class ApplicationController < ActionController::Base
    def welcome
    end

    def login
    end

    def new_account
        @user = User.new 
    end

    def create_account
        @user.update(user_params)
    end

    def home
    end

    def image
    end

    private

    def user_params
        params.require(:user).permit(:name, :age, :bio, :username, :password)
    end
end
