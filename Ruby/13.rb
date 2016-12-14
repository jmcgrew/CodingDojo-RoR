#Print 1-255
# (1..255).each {|num| puts num}
# ========
# i = 1
# while i < 256 do
#   puts i
#   i += 1
# end
# ========
# 1.upto(255) {|num| puts num}

#Print odds 1-255
# (1..255).step(2) {|num| puts num}
# =========
# (1..255).each {|num| puts num if num % 2 == 1}

#Print Sum
# sum = 0
# for i in 0..255
#   puts "New number: #{i} Sum: #{sum += i}"
# end
# ==========
# sum = 0
# (0..255).each {|num| puts "New number: #{num} Sum: #{sum += num}"}

# arr = [5, 6, 7, 8]
# arr.inject{ |sum, el| sum + el }.to_f / arr.size
#
# puts arr.length

def squareValues(arr)
  puts arr.each {|i| arr[arr.index(i)] = i*i}
end

def squareValues2(arr)
  puts arr.collect{|i| i*i }
end

def eliminateNegative2(y)
  puts y.collect!{|i| (i < 0)? 0:i}
end

def eliminateNegative(arr)
  puts arr.each {|i| arr[arr.index(i)] = 0 if (i < 0)}
end

def minMaxAverage(arr)
  min = arr[0]
  max = arr[0]
  sum = 0
  arr.each {|i| min = i if (i < min); max = i if (i > max); sum += i}
  puts min, max, sum / (arr.length)
end

def minMaxAverage2(x)
  puts "Lowest array number is: #{x.min} and the largest number is: #{x.max}"
  puts x.inject(0.0){|sum, el| sum + el} / x.size
  # puts x.inject(0.0){|sum, el| sum + el} / x.length
end

def shiftValues(arr)
  puts arr.push(0).delete_at(0)
end

def shiftValues2(arr)
  puts arr.drop(1).push(0)
end

def shiftValues3(arr)
  arr.shift(1)
  puts arr.push(0)
end

def numberToString(arr)
  puts arr.each {|i| arr[arr.index(i)] = "Dojo" if (i < 0)}
end

def numberToString2(arr)
  puts arr.collect! {|e| (e < 0)? "Dojo": e}
end

def numberToString3(arr)
  i = 0
  num = arr.length-1
  while i < num do
    if (arr[i] < 0)
      arr[i] = "Dojo"
    end
  i+=1
  end
  puts arr
end

squareValues2([1, -5, 20, -2])
