require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  setup do
    travel_to Time.zone.parse('2019-05-16 07:00')
  end

  test 'time_ago_in_nicer_words' do
    assert_equal time_ago_in_nicer_words(Time.now), 'today'
    assert_equal time_ago_in_nicer_words(Time.now.beginning_of_day), 'today'
    assert_equal time_ago_in_nicer_words(Time.now.days_ago(1)), 'yesterday'
    assert_equal time_ago_in_nicer_words(Time.now.days_ago(1).beginning_of_day), 'yesterday'
    assert_equal time_ago_in_nicer_words(Time.now.days_ago(3).beginning_of_day), 'this week'
    assert_equal time_ago_in_nicer_words(Time.now.beginning_of_week), 'this week'
    assert_equal time_ago_in_nicer_words(Time.now.days_ago(4).beginning_of_day), 'last week'
    assert_equal time_ago_in_nicer_words(Time.now.days_ago(7).beginning_of_week), 'last week'

  end

end