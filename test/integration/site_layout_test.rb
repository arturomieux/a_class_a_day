require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "home page layout" do
    get root_path
    assert_template 'home/index'
    assert_select 'title', SITE_TITLE
  end
end
