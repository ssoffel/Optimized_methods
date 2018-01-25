# O(n^2)
def lcss_1(arr)
  sums = []
  (arr.length).times do |i|
    i.upto(arr.length) do |j|
     sums << arr[i..j]
    end
  end
  sums.uniq!

  results = arr[0]
  largest = arr[0]
  sums.each do |ar|
    results = ar.reduce(:+)
    if results > largest
      largest = results
    end
  end
  largest
end

# O(n) time with O(1) memory
 def lcss_2(arr)
  largest_num = arr.max
  max_sum = 0
  current_sum = 0

  arr.each do |num|
    current_sum += num

    if current_sum < 0
      current_sum = 0
    elsif max_sum < current_sum
      max_sum = current_sum
    end
  end

  return largest_num if max_sum == 0
  max_sum
end

list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]
