class Post < ApplicationRecord
  
  def description
    self.short_description || self.content[0...100]
  end
end

