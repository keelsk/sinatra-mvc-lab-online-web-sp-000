class PigLatinizer < Sinatra::Base 
  attr_accessor :text
  
  def initialize(text)
    @text = text
  end
  
  def starts_with_consonant
    ending = text.slice!(0)
    
    if text.find {|letter| letter.include?(/[aeiou]/)}
      if !(letter.include?(/[aeiou]/))
        part << letter
        new_text = text.shift()
      elsif 
      end
    end
    part << new_text
    part.join(',')
  end
  
  def starts_with_vowel
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