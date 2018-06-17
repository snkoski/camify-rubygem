require 'spec_helper'
require 'camify'

describe Camify do
  subject {described_class.new}

  describe '#process' do
    let(:input) do
      %q{my first ruby gem.}
    end
    let(:lower_case) do
      %q{abcdefghijklmnopqrstuvwxyz}
    end

    let(:output) { subject.process(input) }

    it 'converts conventional letters to letters with weird accents' do
      expected = "m̃ɏ ᶂįřšť řǔᶀɏ ǧěm̃."
      expect(output). to eq expected
    end

    let(:lower_output) { subject.process(lower_case) }

    it 'can convert any lowercase letter to an accented letter' do
      expected = "ǎᶀčďěᶂǧȟįǰǩľm̃ňǒp̃ʠřšťǔṽẘx̌ɏž"
      expect(lower_output). to eq expected
    end

  end
end
