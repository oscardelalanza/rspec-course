RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_var) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods.push('Sushi')
    expect(@foods.length).to eq(1)
  end

  it 'can reuse outside instance variables across different examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'Second example in different file' do
  include_context 'common'

  it 'can use shared let variable' do
    expect(some_var).to eq([1, 2, 3])
  end
end
