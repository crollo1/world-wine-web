class SessionController < ApplicationController

  def new
  end #new

  def create
    
    user = User.find_by email: params[:email]

    if user.present? && user.authenticate( params[:password] ) #checking if credentials are correct

      session[:user_id] = user.id
      redirect_to user_path(user.id) #profile page

    else

      flash[:error] = 'Invalid email address or password'

      redirect_to login_path #login page

    end #else


  end #create

  def destroy
    
    session[:user_id] = nil #for loggin user out
    redirect_to login_path #back to login page

  end #destroy

end
