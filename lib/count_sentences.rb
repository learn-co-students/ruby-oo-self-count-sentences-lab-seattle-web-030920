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
    total = 0 
    self.split(" ").each {|word| word.sentence? || word.question? || word.exclamation? ? total += 1 : nil}
    return total
  end
  
end