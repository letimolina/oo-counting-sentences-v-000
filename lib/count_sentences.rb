require 'pry'
class String
  #add custom methods to Ruby's string class
  def sentence?
    # binding.pry
   self.match(/\z*[.]/) ? true : false
   #self.end_with? "."
  end
  
  def count_sentences
    binding.pry
    # have to have compact b/c nil is placed in returned arr for when conditional returns false
    # chain #count, so the number of elements in array is returned
   self.split(/[.!?]/).collect {|s| s if s.size > 2}.compact.count
   
   self.split(/[.!?]/).delete_if {|s| s == ''}.count 
   
   self.split(/[.!?]/) 
   
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size 
   
  end

end

# x = String.new('Test')
# x.sentence?