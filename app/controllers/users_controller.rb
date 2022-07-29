class UsersController < ApplicationController
    before_action :authenticate_user!, only:[:show, :index]
    def show
        @user = current_user
        @date = params[:filter]
        if @date && ! @date.empty?
            @notes = @user.notes.select{ |note| note.created_at.strftime('%Y-%m-%d') == @date }
        else
            @notes = @user.notes
        end
    end
end
