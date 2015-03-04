require 'rails_helper'

RSpec.describe "routes for Links", type: :routing do
  it { expect(get('/')).to route_to('links#new')}

  it { expect(post('/')).to route_to('links#create')}
end