require 'spec_helper'

class Dummy
  extend UltraPending
  include UltraPending
end

describe UltraPending do
  let(:extender) {Dummy}
  let(:includer) {extender.new}

  it 'has a version number' do
    expect(UltraPending::VERSION).not_to be nil
  end

  describe '.pending' do
    it 'raises an error' do
      expect {extender.pending}.to raise_error(RuntimeError)
    end

    it 'stringifies its arguments as the error message' do
      expect {extender.pending 1, 2, 'harry'}.
        to raise_error(RuntimeError, '1 2 harry')
    end
  end

  describe '#pending' do
    it 'raises an error' do
      expect {includer.pending}.to raise_error(RuntimeError)
    end

    it 'stringifies its arguments as the error message' do
      expect {includer.pending 3, 4, 'sally'}.
        to raise_error(RuntimeError, '3 4 sally')
    end
  end

end
