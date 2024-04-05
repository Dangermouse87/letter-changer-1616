require_relative '../encrypt'
# RSPEC

  # describe -> which method do we want to test
    # it -> describe what we want to do in simple terms
      # expect -> what are we testing for

describe '#encrypt' do
  it 'should be a string' do
    expect(encrypt('')).to be_a(String)
  end

  it 'should return "B" when given an "E"' do
    expect(encrypt("E")).to eq("B")
  end

  it 'should encrypt this text' do
    actual = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(encrypt(actual)).to eq(expected)
  end
end
