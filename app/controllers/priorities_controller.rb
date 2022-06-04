class PrioritiesController < ApplicationController
    def index
        @priority = Priority.all
        render json: {
            values: @priority,
            message: "SUccess!"
        }, status: 200
    end
end
