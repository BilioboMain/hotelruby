class ReviewsAdminController < ApplicationController
  def index
    @reviews=Review.all()
  end
end
