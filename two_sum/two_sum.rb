

def two_sum1?(arr, target_sum)
  count = 0
  for i in (0...arr.length-1)
    for j in (i+1...arr.length)
      count+=1
      # return true if arr[i] + arr[j] == target_sum && i != j
    end
  end
  # false
  count
end


arr = (1..1000).to_a

puts "two sums"
puts arr.count
puts two_sum1?(arr, 6) #true
puts two_sum1?(arr, 10) #false