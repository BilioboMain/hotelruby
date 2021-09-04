class ReviewsController < ApplicationController
  def index
    @reviews=Review.all()
  end

  def show

  end

  def new

  end

  def create
    @review = Review.new(params.require(:review).permit(:author_name,:body, :email))
    @review.save

    redirect_to '/reviews/'
  end
end
