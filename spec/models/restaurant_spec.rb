require 'rails_helper'

describe Restaurant, type: :model do
  describe 'Validations' do
    it "Can't add a restaurant without a name" do
      expect{ Restaurant.create(description: 'a description') }.to_not change{Restaurant.count}
    end
  end
end
