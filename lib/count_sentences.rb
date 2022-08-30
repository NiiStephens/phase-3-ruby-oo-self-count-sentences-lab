require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
    
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false

  end

  def count_sentences
    punctuations = ['!', '.', '?']
    self.split(Regexp.union(punctuations))
    .find_all {|item| !item.empty?}.size
  end
end