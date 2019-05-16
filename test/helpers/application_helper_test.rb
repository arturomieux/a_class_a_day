require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  setup do
    a_thursday = Time.zone.parse('2019-05-16 07:00')
    travel_to a_thursday
  end

  test 'time_ago_in_nicer_words' do
    now =  Time.now
    assert_equal time_ago_in_nicer_words(now), 'today'
    assert_equal time_ago_in_nicer_words(now.beginning_of_day), 'today'

    yesterday = now.days_ago(1)
    assert_equal time_ago_in_nicer_words(yesterday), 'yesterday'
    assert_equal time_ago_in_nicer_words(yesterday.beginning_of_day), 'yesterday'

    monday = now.days_ago(3).beginning_of_day
    assert_equal time_ago_in_nicer_words(monday), 'this week'
    assert_equal time_ago_in_nicer_words(now.beginning_of_week), 'this week'
    
    last_sunday = now.days_ago(4)
    assert_equal time_ago_in_nicer_words(last_sunday.beginning_of_day), 'last week'
    assert_equal time_ago_in_nicer_words(last_sunday.beginning_of_week), 'last week'

  end

end