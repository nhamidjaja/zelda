require 'rails_helper'

RSpec.describe Link, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:link)).to be_valid
  end

  it { expect(FactoryGirl.build(:link, vanity_url: '')).to_not be_valid }
  it { expect(FactoryGirl.build(:link, destination_url: '')).to_not be_valid }

  describe '.vanity_url' do
    it 'is unique' do
      FactoryGirl.create(:link, vanity_url: 'abc')

      expect(FactoryGirl.build(:link, vanity_url: 'abc')).to_not be_valid
    end
  end
end
