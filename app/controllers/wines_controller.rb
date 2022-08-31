class WinesController < ApplicationController

  before_action :check_if_logged_in, except: [:index]

  #Create ############################
  def new

    @wine = Wine.new

  end #new

  def create

    Wine.create wine_params

    if params[:file].present?

      response = Cloudinary::Uploader.upload(params[:file])
      wine.image = response["public_id"]
      wine.save

    end #if

    redirect_to wines_path

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

    wine = Wine.find params[:id]
    # wine.update wine_params

    if params[:file].present?

      req = Cloudinary::Uploader.upload(params[:file])
      wine.image = req["public_id"]

    end #if

    wine.update_attributes(wine_params)
    wine.save
    redirect_to wine_path(wine.id)


  end #update

  #Delete ###########################
  def destroy

    Wine.destroy params[:id]
    redirect_to wines_path

  end #destroy

  private ######################################################

  def wine_params 

    params.require(:wine).permit(:name, :style, :vintage, :image, :region_id, :user_id)

  end

end #WinesController
