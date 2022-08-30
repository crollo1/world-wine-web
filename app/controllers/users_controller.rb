
class UsersController < ApplicationController

    def new
        @user = User.new
    end #new

    def create
        
        @user = User.create user_params

        if @user.persisted?
            
            session[:user_id] = @user.id #auto login
            redirect_to root_path #user profile page

        else
            
            render :new 
            
        end #else
        
        

    end #create

    def index
        
    end #end

    def show
        
    end #show

    def edit
        
    end #edit

    def update
        
    end #update

    def destroy
        
    end #destroy

    private

    def user_params

        params.require(:user).permit(:name, :email, :password, :password_confirmation)
        
    end #user_params

end #ApplicationRecord