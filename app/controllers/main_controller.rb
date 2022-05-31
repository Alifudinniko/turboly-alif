class MainController < ApplicationController
    
    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
       # flash.now[:notice] = "Logged in Successfult"
       # flash.now[:alert] = "Invalid password or email"
    end
    
end