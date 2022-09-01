
class UsersController < ApplicationController

    # before_action :check_for_admin

    def new
        @user = User.new
    end #new

    def create
        
        @user = User.create user_params

        if @user.persisted?
            
            session[:user_id] = @user.id #auto login
            redirect_to user_path(@user.id) #user profile page

        else
            
            render :new 
            
        end #else
        
        

    end #create

    def index
        
    end #end

    def show


    end #show

    def edit

        @user = User.find params[:id]

    end #edit

    def update
        
        user = User.find params[:id]
        user.update user_params

        redirect_to user_path(user.id)

    end #update

    def destroy
        
    end #destroy

    private ############################################

    def user_params

        params.require(:user).permit(:name, :email, :password, :password_confirmation)
        
    end #user_params

end #ApplicationRecord