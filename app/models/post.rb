class Post < ApplicationRecord
  
  def description
    self.short_description || self.text[0...100]
  end
end

