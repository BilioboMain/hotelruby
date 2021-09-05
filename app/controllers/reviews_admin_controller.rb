class ReviewsAdminController < ApplicationController
  def index
    @reviews=Review.all()
  end


  def show

  end

  def new

  end

  def update
    @review = Review.find(params[:id])
    @review.update({'posted': true})

    redirect_to '/reviews_admin/'
  end

  def hide
    @review = Review.find(params[:id])
    @review.update({'posted': false})
    redirect_to '/reviews_admin/'
  end
end

