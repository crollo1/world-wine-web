class ReviewsController < ApplicationController

  def new

    @review = Review.new

  end #new

  def create

    Review.create review_params
    redirect_to reviews_path

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

    @review = Review.find params[:id]
    @review.update review_params
    redirect_to reviews_path
    params[:id]

  end #update

  def destroy

    Review.destroy params[:id]
    redirect_to reviews_path

  end #destroy

  private #################################################

  def review_params

    params.require(:review).permit(:score, :description)
    
  end



end #ReviewsController
