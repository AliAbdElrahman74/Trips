require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'Associations' do
    it {should belong_to(:trip)}
  end

  context 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:lat)}
    it {should validate_presence_of(:long)}
  end
end
