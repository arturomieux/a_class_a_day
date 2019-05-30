require "application_system_test_case"

class SiteLayoutsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit site_layouts_url
  #
  #   assert_selector "h1", text: "SiteLayout"
  # end

  test "pages layout" do
    create_list(:post, 4)
    visit root_path
    assert_template 'home/index'
    assert_select 'title', SITE_TITLE
    assert_select 'header'
    assert_select '#main-header'
    assert_select '#sub-header'
    assert_select 'main'
    assert_select '#search-bar'
    assert_select 'main article', 4
    assert_select 'article a', 'more…', 4

    click_link 'more…'
    assert_template 'posts/show'

  end
end
