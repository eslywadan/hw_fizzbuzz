# write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game

def chkfizzbuzz(prim1, prim2, seq)
  return 'FizzBuzz' if (seq % (prim1 * prim2)).zero?

  return 'Fizz' if (seq % prim1).zero?

  return 'Buzz' if (seq % prim2).zero?

  seq
end

def fizzbuzz(num)
  tmp = *(1..num)
  res = []
  tmp.map do |i|
    if block_given?
      res.append(yield(chkfizzbuzz(3, 5, i).to_s))
    else
      res.append(chkfizzbuzz(3, 5, i).to_s)
    end
  end
  res
end
