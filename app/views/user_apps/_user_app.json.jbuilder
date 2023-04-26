json.extract! user_app, :id, :title, :author, :rd, :ca, :cs, :img, :size, :app_type, :created_at, :updated_at
json.url user_app_url(user_app, format: :json)
