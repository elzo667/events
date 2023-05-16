class UsersController < ApplicationController
    def new
        @user = User.new
      end
    
      def create
        @user = User.new(
          email: params[:user][:email],
          password: params[:user][:password],
          password_confirmation: params[:user][:password_confirmation],
          first_name: params[:user][:first_name],
          last_name: params[:user][:last_name],
        
        )
    
        if @user.save
          session[:user_id] = @user.id
          redirect_to root_path
        else
          render :new
        end
      end
    end
end
