json.array!(@micropostts) do |micropostt|
  json.extract! micropostt, :id, :content, :user_id
  json.url micropostt_url(micropostt, format: :json)
end
