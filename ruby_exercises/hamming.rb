# def hamming_difference base_dna, comparsion_dna
#   base_array = base_dna.chars
#   comparsion_array = comparsion_dna.chars

#   differences = 0
#   differences_array = Array.new
#   base_array.each_index do |i|
#     if base_dna[i] != comparsion_dna[i]
#       differences += 1
#       differences_array << [i , base_array[i], comparsion_array[i]]
#     end
#   end
#   p "Number of differences is #{differences}"
#   p differences_array
# end

def hamming_difference base_dna, comparsion_dna
  base_array = base_dna.chars
  comparsion_array = comparsion_dna.chars

  differences = Array.new
  base_array.each_index do |i|
    if base_dna[i] != comparsion_dna[i]
      differences << [i , base_array[i], comparsion_array[i]]
    end
  end
  p "Number of differences is #{differences.count}"
  p differences
end

hamming_difference "GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT"