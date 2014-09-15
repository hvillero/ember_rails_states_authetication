class StateSerializer < ActiveModel::Serializer
  attributes :id, :abbreviation, :state, :description
end
