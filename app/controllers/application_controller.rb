class ApplicationController < ActionController::Base

    before_action :fetch_user

    def fetch_user

        if session[:user_id].present?
            @current_user = User.find_by id: session[:user_id]
        end #login-check: yes

        unless @current_user.present?
            session[:user_id] = nil
        end #unless 

    end #fetch_user

    def check_if_logged_in

        unless @current_user.present?
            flash[:error] = 'You must be logged in to perform that action'

            redirect_to login_path
            
        end #unless
        
    end #check_if_logged_in

end #ApplicationController
