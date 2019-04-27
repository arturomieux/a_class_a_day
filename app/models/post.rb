class Post < ApplicationRecord
  
  def description
    self.short_description || self.content[0...500]
  end
end

