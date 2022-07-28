class UsersController < ApplicationController
    before_action :authenticate_user!, only:[:show, :index]
    def show
        @user = current_user
        @notes = @user.notes
    end
end
