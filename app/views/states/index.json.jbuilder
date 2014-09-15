json.array!(@states) do |state|
  json.extract! state, :id, :abbreviation, :state, :description
  json.url state_url(state, format: :json)
end
