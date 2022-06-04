class SearchesController < ApplicationController
    def index
        initialize_search
        handle_search_name
    end
    def initialize_search
        @tasks = Task.alphabetical

        session[:search_name] ||= params[:search_name]
        session[:filter] = params[:filter]
        
        params[:filter_option] = nil if params[:filter_option] == ""
        session[:filter_option] = params[:filter_option]
    end

    def handle_search_name
        if session[:search_name]
            @tasks = Task.where("name LIKE ?", "%#{session[:search_name].titleize}%")
        else
            @tasks = Task.all
        end
    end

    def handle_filters
        if session[:filter_option] && session[:filter] == "due_date"
            @tasks = @tasks.where(due_date: session[:filter_option])
        elseif session[:filter_option] && session[:filter] == "priority"
            @teams = @teams.where(priority: session[:filter_option])
        end
    end

end