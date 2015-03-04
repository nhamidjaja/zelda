require 'rails_helper'

RSpec.describe "routes for Links", type: :routing do
  it { expect(get('/')).to route_to('links#new')}
end