class ReviewsController < ApplicationController

  before_action :check_if_logged_in, except: [:index]
 
  def new

    @review = Review.new

  end #new

  def create

    @review = Review.new review_params
    @review.user_id = @current_user.id
    # @review.wine_id = params[:wine_id]
    @review.save

    if @review.persisted?
      redirect_to wine_path(params[:review][:wine_id])
    else
      render :new
    end #else

  end #create


  def index

    @reviews = Review.all

  end #end

  def show

    @review = Review.find params[:id]

  end #show

  def edit

    @review = Review.find params[:id]

  end #edit

  def update
    # raise 'hell'
    @review = Review.find params[:id]
    @review.update review_params
    redirect_to wine_path(@review.wine_id)

  end #update

  def destroy

    # review = Review.find params[:id]
    review = Review.destroy params[:id]
    redirect_to wine_path(review.wine_id)
   

  end #destroy

  private #################################################

  def review_params

    params.require(:review).permit(:score, :description, :wine_id, :user_id)
    
  end



end #ReviewsController
