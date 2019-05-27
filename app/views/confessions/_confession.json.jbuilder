json.extract! confession, :id, :title, :text, :created_at, :updated_at
json.url confession_url(confession, format: :json)
