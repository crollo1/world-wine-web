class RegionsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index]

  def new

    @region = Region.new

  end #new

  def create

    @region = Region.new region_params

    if params[:region][:image].present?

      response = Cloudinary::Uploader.upload params[:region][:image]
      @region.image = response["public_id"]
      
    end #if
    
    @region.save

    if @region.persisted?
      redirect_to regions_path
    else
      render :new
    end #if

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

    if params[:region][:image].present?

      response = Cloudinary::Uploader.upload params[:region][:image]
      @region.image = response["public_id"]

    end #if
    @region.save

    if @region.update region_params
      redirect_to @region
    else
      render :edit
    end #else  

    # @region = Region.find params[:id]


    # if params[:file].present?

    #   req = Cloudinary::Uploader.upload(params[:file])
    #   region.image = req["public_id"]

    # end #if

    # @region.update_attributes(region_params)
    # redirect_to region_path(@region.id)

  end #update

  def destroy

    Region.destroy params[:id]
    redirect_to regions_path

  end #destroy

  private #####################################

  def region_params

    params.require(:region).permit(:name, :country, :image, :video_url)

  end #region_params

end #RegionsController
