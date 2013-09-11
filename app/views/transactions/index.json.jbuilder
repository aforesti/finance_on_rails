json.array!(@transactions) do |transaction|
  json.extract! transaction, :date, :desc, :value, :account_id, :Account
  json.url transaction_url(transaction, format: :json)
end
