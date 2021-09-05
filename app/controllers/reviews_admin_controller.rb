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
    if params[:value]=="yes" 
    @review.update({'posted': true})
    else 
      @review.update({'posted': false})
    end
  end
end
