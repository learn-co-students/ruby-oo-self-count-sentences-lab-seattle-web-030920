require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
  self.end_with?("?")
  end

  def exclamation?
 self.end_with?("!")
  end

  def count_sentences
   array_s =  self.split
   count = 0 
    array_s.each { |string|
    if string.sentence?
      count+=1
    
    elsif string.question?
      count+=1 
    
    elsif string.exclamation?
      count+=1 
    end
   }
     count
  end
end