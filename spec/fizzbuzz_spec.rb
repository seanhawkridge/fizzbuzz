require "fizzbuzz"

describe "fizzbuzz" do
  it "returns a string of 1 when passed the number 1" do
    expect(fizzbuzz(1)).to eq "1"
  end

  it "returns fizz when passed the number 3" do
    expect(fizzbuzz(3)).to eq "fizz"
  end

  it "returns buzz when passed the number 5" do
    expect(fizzbuzz(5)).to eq "buzz"
  end

  it "returns fizzbuzz when passed the number 15" do
    expect(fizzbuzz(15)).to eq "fizzbuzz"
  end

  it "returns fizzbuzz when passed random number divisible by 15" do
    expect(fizzbuzz(15*rand(1..100))).to eq "fizzbuzz"
  end

end
