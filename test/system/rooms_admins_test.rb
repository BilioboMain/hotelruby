# frozen_string_literal: true

require 'application_system_test_case'

class RoomsAdminsTest < ApplicationSystemTestCase
  setup do
    @rooms_admin = rooms_admins(:one)
  end

  test 'visiting the index' do
    visit rooms_admins_url
    assert_selector 'h1', text: 'Rooms Admins'
  end

  test 'creating a Rooms admin' do
    visit rooms_admins_url
    click_on 'New Rooms Admin'

    fill_in 'Body', with: @rooms_admin.body
    fill_in 'Name', with: @rooms_admin.name
    click_on 'Create Rooms admin'

    assert_text 'Rooms admin was successfully created'
    click_on 'Back'
  end

  test 'updating a Rooms admin' do
    visit rooms_admins_url
    click_on 'Edit', match: :first

    fill_in 'Body', with: @rooms_admin.body
    fill_in 'Name', with: @rooms_admin.name
    click_on 'Update Rooms admin'

    assert_text 'Rooms admin was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Rooms admin' do
    visit rooms_admins_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Rooms admin was successfully destroyed'
  end
end
