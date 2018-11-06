json.extract! comment, :id, :title, :body, :user_id, :card_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
