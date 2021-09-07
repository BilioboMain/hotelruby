# frozen_string_literal: true

require 'test_helper'

class RoomsAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rooms_admin = rooms_admins(:one)
  end

  test 'should get index' do
    get rooms_admins_url
    assert_response :success
  end

  test 'should get new' do
    get new_rooms_admin_url
    assert_response :success
  end

  test 'should create rooms_admin' do
    assert_difference('RoomsAdmin.count') do
      post rooms_admins_url,
           params: { rooms_admin: { body: @rooms_admin.body, name: @rooms_admin.name } }
    end

    assert_redirected_to rooms_admin_url(RoomsAdmin.last)
  end

  test 'should show rooms_admin' do
    get rooms_admin_url(@rooms_admin)
    assert_response :success
  end

  test 'should get edit' do
    get edit_rooms_admin_url(@rooms_admin)
    assert_response :success
  end

  test 'should update rooms_admin' do
    patch rooms_admin_url(@rooms_admin),
          params: { rooms_admin: { body: @rooms_admin.body, name: @rooms_admin.name } }
    assert_redirected_to rooms_admin_url(@rooms_admin)
  end

  test 'should destroy rooms_admin' do
    assert_difference('RoomsAdmin.count', -1) do
      delete rooms_admin_url(@rooms_admin)
    end

    assert_redirected_to rooms_admins_url
  end
end
