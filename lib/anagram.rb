# Your code goes here!

class Anagram
  # Set reader and writer for word string and array
  attr_accessor :word, :w_array

  # Initialize word instance variable
  def initialize(word)
    @word = word
  end

  # Are any of the words in the array an anagram of the word instance?
  # Iterate over the array with the condition to delete the word object
  # if its letters don't match the letters from the word instance
  def match(w_array)
    w_array.delete_if {|w| w.split("").sort != word.split("").sort}
  end

  # Another possible solution
  # def match(array)
  #   array.select {|x| x.split("").sort == @name.split("").sort}
  # end

end
