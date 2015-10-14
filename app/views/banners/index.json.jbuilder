json.array!(@banners) do |banner|
  json.extract! banner, :id, :url
  json.url banner_url(banner, format: :json)
end
