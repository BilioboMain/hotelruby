# frozen_string_literal: true

require 'test_helper'

class AdminsPanelControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get admins_panel_index_url
    assert_response :success
  end
end
