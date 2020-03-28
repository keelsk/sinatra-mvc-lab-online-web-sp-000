class PigLatinizer < Sinatra::Base 
  attr_accessor :text
  
  def initialize(text)
    @text = text
  end
  
  def starts_with_consonant
    ending = text.slice!(0)
    
    while !(text[0].include?(/[aeiou]/)) do 
      ending = ending + text.slice!(0)
    end
    
    new_text = text + ending + "ay"
    new_text
  end
  
  def starts_with_vowel
    new_text = text + "way"
    new_text
  end
  
  def change_text
    array_piglat = []
    array_text = text.split(" ")
    array_text.each do |word|
      if (word[0].include?(/[aeiou]/))
        array_piglat << word.starts_with_vowel
      else 
        array_piglat << word.starts_with_consonant
      end
    end
    array_piglat.join(',')
  end
  
  def 
end