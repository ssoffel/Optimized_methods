require 'byebug'

# O(n^2)
def my_min_1(arr)
  smallest = arr[0]
  (arr.length - 1).times do |i|
    (i + 1).upto(arr.length - 1) do |j|
      if arr[i] > arr[j] && arr[j] < smallest
        smallest = arr[j]
      end
    end
  end
  smallest

end

# O(n)
def my_min_2(arr)
  smallest = arr[0]
  arr.each do |el|
    smallest = el < smallest ? el : smallest
  end
  smallest
end

p my_min_1([0,3,5,4,-5,10,1,90])
p my_min_2([0,3,5,4,-5,10,1,90])
