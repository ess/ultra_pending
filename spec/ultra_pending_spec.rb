require 'spec_helper'

class Dummy
  extend UltraPending
  include UltraPending
end

describe UltraPending do
  let(:extender) {Dummy}
  let(:includer) {extender.new}
  let(:messaging) {described_class::ADVICE}

  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  it 'has some helpful advice baked in' do
    expect(described_class::ADVICE).
      to eql('Pending tests are a design smell')
  end

  describe '.pending' do
    it 'raises an error with helpful messaging' do
      expect {extender.pending}.
        to raise_error(RuntimeError, described_class::ADVICE)
    end

    it 'ignores its arguments' do
      expect {extender.pending 'This is pending for now'}.
        to raise_error(RuntimeError, described_class::ADVICE)

      expect {extender.pending 'This is a totally valid use of "pending"', 1}.
        to raise_error(RuntimeError, described_class::ADVICE)
    end


  end

  describe '#pending' do
    it 'raises an error with helpful messaging' do
      expect {includer.pending}.
        to raise_error(RuntimeError, described_class::ADVICE)
    end

    it 'ignores its arguments' do
      expect {includer.pending 'This is pending for now'}.
        to raise_error(RuntimeError, described_class::ADVICE)

      expect {includer.pending 'This is a totally valid use of "pending"', 1}.
        to raise_error(RuntimeError, described_class::ADVICE)
    end
  end

end
