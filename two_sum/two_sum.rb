# O(n^2) time
def bad_two_sum?(arr, tar)
  (0...arr.length).each do |i|
    if arr[i + 1..-1].index(tar - arr[i])
      return true
    end
  end
  false
end

 #O(nlog(n))
def ok_two_sum?(arr, tar)

  sorted_arry = arr.sort
  (0...arr.length).each do |i|
    return true if binary_search(arr[i + 1..-1], (tar - arr[i]))
  end

 false
end

def binary_search(arr, tar, start= 0, final = arr.length - 1)

  if (start == final)
    return nil
  end

  probe_offset = (final - start)/ 2
  probe_index = probe_offset + start

  case  tar <=> arr[probe_index]
  when -1
    binary_search(arr, tar, probe_index, final - 1)
  when 0
    probe_index
  when 1
    sub_answer = binary_search(arr, tar, probe_index + 1, final)
    sub_answer.nil? ? nil : sub_answer
  end
end

# Hash get = O(1)
# Hash set = O(1)
# Loop = O(n)
# Total = O(n)
def fast_two_sum?(arr, tar)
  lookup = {}

  arr.each_with_index do |num, idx|
    return true if lookup[tar - num]
    lookup[num] = idx
  end

  false
end

arr = [0, 1, 5, 7]
p fast_two_sum?(arr, 5) # => should be true
p fast_two_sum?(arr, 10) # => should be false
