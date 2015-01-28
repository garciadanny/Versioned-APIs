require 'rails_helper'

describe ApiConstraint do

  let(:request) { double :request }

  describe '#matches?' do
    let(:version) { 1 }
    let(:constraint) { ApiConstraint.new( version: version ) }

    it 'matches requests including the versioned vendor mime type' do
      headers = { accept: "version=#{version}" }
      allow(request).to receive(:headers).and_return( headers )

      expect(constraint.matches? request).to be true
    end

    it 'does not match requests for versions that do not exist' do
      headers = { accept: "version=#{version + 5}" }
      allow(request).to receive(:headers).and_return( headers )

      expect(constraint.matches? request).to be false
    end
  end
end