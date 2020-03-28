class PigLatinizer < Sinatra::Base 
  attr_accessor :text
  
  def initialize(text)
    @text = text
  end
  
  def change_word
    part = []
    text.each do |letter|
      if !(letter.include?(/[aeiou]/))
        part << letter
        new_text = text.shift()
      end
    end
    part << new_text
    part.join(',')
  end
  
  def change_text
    array_piglat = []
    array_text = text.split(" ")
    array_text.each do |word|
      array_piglat << word.change_word
    end
  end
  
  def 
end