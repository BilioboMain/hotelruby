# frozen_string_literal: true

class ReviewsAdminController < ApplicationController
  before_action :page_unauthorized
  def index
    @reviews = Review.all.order('created_at DESC')
  end

  def show; end

  def new; end

  def update
    @review = Review.find(params[:id])
    @review.update({ 'posted': true })

    redirect_to '/reviews_admin/'
  end

  def hide
    @review = Review.find(params[:id])
    @review.update({ 'posted': false })
    redirect_to '/reviews_admin/'
  end

  def page_unauthorized
    redirect_to '/reviews/' unless admin_signed_in?
  end
end
