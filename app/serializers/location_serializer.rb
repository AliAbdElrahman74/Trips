class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :long, :trip_id
end
