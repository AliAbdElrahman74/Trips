require 'rails_helper'

RSpec.describe Trip, type: :model do
  context 'Associations' do
    it {should have_many(:locations)}
  end
end
