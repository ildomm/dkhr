# file: spec/routing/sessions_routing_spec.rb
require 'rails_helper'

RSpec.describe SessionsController, type: :routing do
  it { expect(post:   "/sessions").to route_to("sessions#create") }
  it { expect(delete: "/sessions").to route_to("sessions#destroy") }
end