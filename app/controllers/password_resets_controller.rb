class PasswordResetsController < ApplicationController
    def new

    end
    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            #send email
            PasswordMailer.with(user: @user).reset.deliver_now
            
        end
        redirect_to root_path, notice: "We have send link reset to your email, check it out"
    end
end