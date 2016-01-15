def fizzbuzz(val)
  return "fizzbuzz" if val % 15 == 0
  return "fizz" if val % 3 == 0
  return "buzz" if val % 5 == 0
  val
end
