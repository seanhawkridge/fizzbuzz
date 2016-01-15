require "fizzbuzz"

three_tester = 0
five_tester = 0
unpopular = 0

loop do
  three_tester = rand(1..100)*3
  five_tester = rand(1..100)*5
  unpopular = rand(1..100)
  break if three_tester % 15 != 0 && five_tester % 15 != 0 && unpopular % 3 != 0 and unpopular % 5 != 0
end



describe "fizzbuzz" do
  it "returns a string of 1 when passed the number 1" do
    expect(fizzbuzz(1)).to eq 1
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

  it "returns fizz when passed random number divisible by 3" do
    expect(fizzbuzz(three_tester)).to eq "fizz"
  end

  it "returns buzz when passed random number divisible by 5" do
    expect(fizzbuzz(five_tester)).to eq "buzz"
  end

  it "returns val when passed number not divisible by 3 or 5" do
    expect(fizzbuzz(7)).to eq 7
  end

  it "returns buzz when passed RANDOM number not divisible by 3 or 5" do
    expect(fizzbuzz(unpopular)).to eq unpopular
  end

end
