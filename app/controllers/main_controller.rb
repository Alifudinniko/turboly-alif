class MainController < ApplicationController
    
    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            @tasks = Task.where(created_by: session[:user_id], due_date: Date.today)
        end
    end
    
end