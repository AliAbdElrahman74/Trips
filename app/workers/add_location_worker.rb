class AddLocationWorker
  include Sidekiq::Worker

  def perform(location_params)
    location = Location.create(location_params)
  end
end
