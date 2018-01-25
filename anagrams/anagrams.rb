# Total = O(m!)
def first_anagram?(str1, str2)
  str2.chars.permutation.to_a.include?(str1.chars)
end

# Loop = O(n)
# Array#index = O(n)
# Total = O(n^2)
def second_anagram?(str1, str2)
  letters1 = str1.chars
  letters2 = str2.chars

  str1.chars.each do |c|
    match1 = letters1.index(c)
    match2 = letters2.index(c)

    return false unless match1 && match2

    letters1.delete_at(match1)
    letters2.delete_at(match2)
  end

  letters1.empty? && letters2.empty?
end

# Total = O(nlog(n))
def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

# Total = O(n)
def fourth_anagram?(str1, str2)
  letter_count = Hash.new { |h, k| h[k] = 0 }

  str1.chars.each do |letter|
    letter_count[letter] += 1
  end

  str2.chars.each do |letter|
    letter_count[letter] -= 1
  end

  letter_count.values.all? { |val| val == 0 }
end
