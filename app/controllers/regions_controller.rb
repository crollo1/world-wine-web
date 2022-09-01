class RegionsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index]

  def new

    @region = Region.new

  end #new

  def create

    Region.create region_params

    if params[:file].present?

      response = Cloudinary::Uploader.upload(params[:file])
      region.image = response["public_id"]
      region.save

    end #if

    redirect_to regions_path

  end #create

  def index

    @regions = Region.all

  end #index

  def show

    @region = Region.find params[:id]

  end #show

  def edit

    @region = Region.find params[:id]

  end #edit

  def update

    @region = Region.find params[:id]

    if params[:file].present?

      req = Cloudinary::Uploader.upload(params[:file])
      region.image = req["public_id"]

    end #if

    @region.update_attributes(region_params)
    redirect_to region_path(@region.id)

  end #update

  def destroy

    Region.destroy params[:id]
    redirect_to regions_path

  end #destroy

  private #####################################

  def region_params

    params.require(:region).permit(:name, :country, :image)

  end #region_params

end #RegionsController
