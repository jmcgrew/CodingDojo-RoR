# 8.-Greater than y
puts "8.-Greater than y"
$y=34
e = [1,4,7,34,35]
puts e.select{ |x| x > y}.length
puts e.select{ |x| x > y}.size
puts e.select{ |x| x > y}.count


# # 9.-Square the values
puts "9.-Square the values"
y=34
f = [1,4,7,34,35]
puts f.map{ |x| x * x}


# 10.-Eliminate Negative numbers
puts "10.-Eliminate Negative numbers"
g = [1,-5,3,5,-7,7,34,65,-76,43,-65,7,-34]
puts g.map!{ |x| x < 0 ? 0 : x}


# # 11.-Min, Max and Average
puts "11.-Min, Max and Average"
h = [2,23,44,56,43,6,23]
puts h.min
puts h.max
puts h.inject { | sum, i | (sum + i) }/h.count


# # 12.-Shifting the values in an Array
puts "12.-Shifting the values in an Array"
i = [13,54,32,3,5,3]
puts i.drop(1).push(0)


# 13.-Number to string
puts "13.-Number to string"
h = [1,-5,3,5,-7,7,34,65,-76,43,-65,7,-34]
puts h.map!{ |x| x < 0 ? "Dojo" : x}
