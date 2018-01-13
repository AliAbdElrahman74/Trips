class TripSerializer < ActiveModel::Serializer
  cache
  delegate :cache_key, to: :object
  attributes :id, :status

  has_many :locations
end
