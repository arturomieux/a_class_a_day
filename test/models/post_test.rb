require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "Post.description gives first 200 characters of content if short_description doesn't exist" do
    post = create(:post_without_short_description)
    assert_equal post.description, post.content[0...500]
  end
end
