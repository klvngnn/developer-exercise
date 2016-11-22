class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str_arry = str.scan(/[\w'-]+|[[:punct:]]+/)
    complete_arry = []

    str_arry.each do |word|
      if word.length > 4
        if word == word.capitalize
          complete_arry << "Marklar"
        else
          complete_arry << "marklar"
        end
      else
        if word.match(/[[:punct:]]/)
          complete_arry[-1] += word
        else
          complete_arry << word
        end
      end
    end
    complete_arry.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    f_arry = [1,1]
    sum = 0
    i = 1

    while i < (nth - 1) do
      f_arry.push(f_arry[i] + f_arry[(i-1)])
      i += 1
    end

    f_arry.each do |fibnum|
      if fibnum.even?
        sum += fibnum 
      end
    end

    return sum
  end

end
