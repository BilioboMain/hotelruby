# frozen_string_literal: true

require 'test_helper'

class BookingsAdminControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get bookings_admin_index_url
    assert_response :success
  end
end
