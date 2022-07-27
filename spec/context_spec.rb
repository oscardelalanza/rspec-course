RSpec.describe '#even? method' do
  context 'with even number' do
    it 'returns true' do
      expect(4.even?).to be_truthy
    end
  end

  context 'with odd number' do
    it 'returns false' do
      expect(5.even?).to be_falsy
    end
  end
end
