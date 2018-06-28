require 'rspec'

class String
  def count_words
    words_in_string.size
  end

  def word_count_to_hash
    word_arr = words_in_string
    word_arr.map{ |word| [word, word_arr.count(word)]}.to_h
  end

  def words_in_string
    split(/\W/).delete_if{ |word| !word.match(/\w/) }
  end
end


describe 'Monkey patch to String Class' do
  string = '- the quick brown fox / jumped over the lazy fox.'
  string_hash = { "the" => 2, "quick" => 1, 
                  "brown" => 1, "fox" => 2, 
                  "jumped" => 1, "over" => 1, 
                  "lazy" => 1
                }

  it 'Counts words in a String' do
    expect(string.count_words).to eq(9)
  end

  it 'Converts word and word count to hash' do
    expect(string.word_count_to_hash).to eq(string_hash)
  end
end
