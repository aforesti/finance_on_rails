json.array!(@accounts) do |account|
  json.extract! account, :name, :init_value
  json.url account_url(account, format: :json)
end
