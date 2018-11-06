json.extract! card, :id, :name, :atk, :def, :picture, :user_id, :duelist_id, :created_at, :updated_at
json.url card_url(card, format: :json)
