require 'spec_helper'

describe Gauges::Rails::Engine do
  let(:site_id) { SecureRandom.hex(12) }

  subject { described_class }

  context 'configuration' do
    subject { GaugesRailsTestApp.config.gauges }

    it { should be_a(ActiveSupport::OrderedOptions) }

    its(:site_id) { should be_nil }

    context 'site_id=' do
      specify do
        subject.site_id = site_id
        expect { subject.site_id = nil }.to change(subject, :site_id).to(nil)
      end
    end
  end

  describe 'assets' do
    include Rack::Test::Methods

    let(:app) { GaugesRailsTestApp }

    before { GaugesRailsTestApp.config.gauges.site_id = site_id }

    it 'interpolates the site_id' do
      get '/assets/gauges.js'
      last_response.body.should include(site_id)
    end
  end
end
