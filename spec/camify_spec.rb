require 'spec_helper'
require 'camify'

# describe Camify do
#   subject {Camify.new}
#
#   describe '#process' do
#     let(:input) {"my first ruby gem."}
#     let(:output) { subject.process(input) }
#
#     it 'converts conventional letters to letters with weird accents' do
#       expect(output). to equal("m̃ɏ ᶂįřšť řǔᶀɏ ǧěm̃")
#     end
#   end
# end
# RSpec.describe Camify do
#   it "has a version number" do
#     expect(Camify::VERSION).not_to be nil
#   end
#
#   it "does something useful" do
#     expect(false).to eq(true)
#   end
# end
# ǎ", "ᶀ", "č", "ď", "ě", "ᶂ", "ǧ", "ȟ", "į", "ǰ", "ǩ", "ľ", "m̃", "ň", "ǒ", "p̃", "ʠ", "ř", "š", "ť", "ǔ", "ṽ", "ẘ", "x̌", "ɏ", "ž

describe Camify do
  subject {described_class.new}

  describe '#process' do
    let(:input) do
      %q{my first ruby gem.}
    end

    let(:output) { subject.process(input) }

    it 'converts conventional letters to letters with weird accents' do
      expected = "m̃ɏ ᶂįřšť řǔᶀɏ ǧěm̃."


      expect(output). to eq expected
    end
  end
end
