class MainController < ApplicationController
    
    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            @tasks = Task.alphabetical.where(due_date: Date.today)
        end
    end
    
end