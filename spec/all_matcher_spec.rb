RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    [5, 7, 9].each do |val|
      expect(val).to be_odd
    end

    expect([5, 7, 9, 13, 15]).to all(be_odd)
    expect([5, 7, 9]).to all(be < 10)
  end

  context [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
