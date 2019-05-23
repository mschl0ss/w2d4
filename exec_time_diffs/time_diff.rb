
#phase I

def my_min1(list)

  num = 0

  for ele1 in list
    for ele2 in list
      case ele1 <=> ele2
      when -1
        num = ele1 if ele1 < num
      when 1
        num = ele2 if ele2 < num
      end
    end
  end

  num


  
end

#phase II

def my_min2(list)

  num = list.first
  for ele1 in list
    num = ele1 if ele1 < num
  end

  num
end

a = [0,3,5,4,-5,10,1,90]
puts "my_min 1 & 2"
puts my_min2(a)
puts my_min2(a)
puts "***************"

def lcss1(list)
  subs = []
  (0...list.length-1).each do |i|
    (i...list.length).each do |j|
      subs << list[i..j].sum
    end
  end

  subs.max
end
a = [5,3,-7]
b = [2, 3, -6,7,-6,7]
c = [-5, -1, -3]
puts "largest contiguous subsum"
print "example 1: "
puts lcss1(a)
print "example 2: "
puts lcss1(b)
print "example 3: "
puts lcss1(c)