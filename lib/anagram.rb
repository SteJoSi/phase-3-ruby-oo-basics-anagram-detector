# Your code goes here!
require 'pry'

class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(array)
        word_letters = @word.split("")
        array.filter do |word|
            word.split("").sort == word_letters.sort
        end
    end
end

# listen = Anagram.new("listen")
# listen.match(%w[enlists google inlets banana])

# binding.pry