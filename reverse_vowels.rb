class ReverseVowels
  def reverse_vowels(input)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    vowel_indices = []
    input.chars.each_with_index do |char, index|
      vowel_indices << index if vowels.include?(char)
    end
    i, j = 0, vowel_indices.size - 1

    while i < j
      input[vowel_indices[i]], input[vowel_indices[j]] = input[vowel_indices[j]], input[vowel_indices[i]]
      i += 1
      j -= 1
    end
    input
  end
end
