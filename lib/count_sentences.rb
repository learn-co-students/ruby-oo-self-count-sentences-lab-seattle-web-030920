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
    array = self.split(" ")
    #array.select{|x| x=="." || x=="?"}.length
    #array.select{|x| x.end_with?(".")||x.end_with?("?")||x.end_with?("!")}.length  
    array.select{|x| x.exclamation?||x.question?||x.sentence?}.length  
  end
end