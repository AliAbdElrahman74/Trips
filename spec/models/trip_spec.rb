require 'rails_helper'

RSpec.describe Trip, type: :model do
  context 'Associations' do
    it {should have_many(:locations)}
  end

  context 'Validations' do
    it do
      should validate_inclusion_of(:status).
        in_array(["completed","ongoing"])
    end
    it {should validate_presence_of(:status)}
  end
end
