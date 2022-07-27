RSpec.describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'checks for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
      expect(subject).to contain_exactly(2, 1, 3)
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) }
  it { is_expected.to contain_exactly(3, 2, 1) }
  it { is_expected.to contain_exactly(2, 1, 3) }
end
