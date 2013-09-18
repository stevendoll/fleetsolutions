json.array!(@posts) do |post|
  json.extract! post, :title, :author_id, :published_on, :teaser, :body
  json.url post_url(post, format: :json)
end
