json.array!(@memes) do |meme|
  json.extract! meme, :id, :name, :description, :user_id
  json.url meme_url(meme, format: :json)
end
