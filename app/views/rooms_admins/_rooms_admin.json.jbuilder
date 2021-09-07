# frozen_string_literal: true

json.extract! rooms_admin, :id, :name, :body, :created_at, :updated_at
json.url rooms_admin_url(rooms_admin, format: :json)
