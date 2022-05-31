class TasksController < ApplicationController
    def index
        @tasks = Task.find_by(created_by: session[:user_id])
    end

end