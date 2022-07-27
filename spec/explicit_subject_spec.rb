RSpec.describe Hash do
  subject(:alias_subject) do
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(alias_subject.length).to eq(2)
  end
end
