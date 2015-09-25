json.array!(@push_events) do |push_event|
  json.extract! push_event, :id, :data, :body
  json.url push_event_url(push_event, format: :json)
end
