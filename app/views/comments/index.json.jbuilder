json.array!(@comments) do |comment|
  json.extract! comment, :commenter, :post_id, :email, :published_on, :body
  json.url comment_url(comment, format: :json)
end
