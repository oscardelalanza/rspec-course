RSpec.describe Hash do
  it 'starts off empty' do
    expect(subject.length).to eq(0)
    subject[:key] = 'value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
