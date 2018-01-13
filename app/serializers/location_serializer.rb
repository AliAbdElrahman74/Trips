class LocationSerializer < ActiveModel::Serializer
  cache
  delegate :cache_key, to: :object
  attributes :id, :name, :lat, :long, :trip_id
end
