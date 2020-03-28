class PigLatinizer < Sinatra::Base 
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
end