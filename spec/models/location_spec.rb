require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'Associations' do
    it {should belong_to(:trip)}
  end
end
