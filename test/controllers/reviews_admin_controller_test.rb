# frozen_string_literal: true

require 'test_helper'

class ReviewsAdminControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get reviews_admin_index_url
    assert_response :success
  end
end
