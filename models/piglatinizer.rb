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
    new_text
  end
  
  def change_text
    array_text = text.split(" ")
  end
end