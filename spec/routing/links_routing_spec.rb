require 'rails_helper'

RSpec.describe "routes for Links", type: :routing do
  it { expect(get('/')).to route_to('links#new')}

  it { expect(post('/links')).to route_to('links#create')}
  it { expect(post: links_path).to route_to('links#create')}

  it { expect(get('/a')).to route_to(controller: 'links', action: 'redirect', short_url: 'a') }
end