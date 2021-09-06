class ReviewsAdminController < ApplicationController
  before_action :page_unauthorized
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

  def page_unauthorized
    if admin_signed_in?
      redirect_to login_redirect_path
    else
      redirect_to "/reviews/"
    end
  end
end

