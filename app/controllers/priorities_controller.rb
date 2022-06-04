class PrioritiesController < ApplicationController
    def index
        @priority = Priority.all
        render json: {
            values: @priority,
            message: "Success!"
        }, status: 200
    end
    
end
