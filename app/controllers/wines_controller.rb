class WinesController < ApplicationController

  before_action :check_if_logged_in, except: [:index]

  #Create ############################
  def new

    @wine = Wine.new

  end #new

  def create

    @wine = Wine.new wine_params
    @wine.user_id = @current_user.id

    if params[:wine][:image].present?

      response = Cloudinary::Uploader.upload params[:wine][:image]
      @wine.image = response["public_id"]
      
    end #if
    
    @wine.save

    if @wine.persisted?
      redirect_to wines_path
    else
      render :new
    end #if

  end #create
  


  #Read #############################
  def index

    @wines = Wine.all

  end #index

  def show

    @wine = Wine.find params[:id]
    @review = Review.new

  end #show

  #Update ###########################
  def edit

    @wine = Wine.find params[:id]

  end #edit

  def update
    # raise 'hell'
    @wine = Wine.find params[:id]
    @wine.user_id = @current_user.id
    # wine.update wine_params

    if params[:wine][:image].present?

      response = Cloudinary::Uploader.upload params[:wine][:image]
      @wine.image = response["public_id"]

    end #if
    @wine.save

    if @wine.update wine_params
      redirect_to @wine
    else
      render :edit
    end #else   


  end #update

  #Delete ###########################
  def destroy

    Wine.destroy params[:id]
    redirect_to wines_path

  end #destroy

  def add_remove_favourites
    
    @wine = Wine.find params[:id]
    if @current_user.favourite_wines.include?(@wine)
       # user already liked wine , so unfavourite
      @current_user.favourite_wines.delete(@wine)
    else
      # user doesn't like wine yet, so favourite
      @current_user.favourite_wines << @wine  
    end
    redirect_to @wine

  end

  private ######################################################

  def wine_params 

    params.require(:wine).permit(:name, :style, :vintage, :region_id, :user_id, :favourite_wines)

  end

end #WinesController
