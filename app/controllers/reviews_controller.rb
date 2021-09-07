# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.order('created_at DESC')
  end

  def show; end

  def new; end

  def create
    @review = Review.new(params.require(:review).permit(:author_name, :body, :email))
    @review.update({ 'posted': false })
    @review.save

    redirect_to '/reviews/'
  end

  def update
    @review = Review.find(params[:id])
    @review.update({ 'posted': true })
  end
end
