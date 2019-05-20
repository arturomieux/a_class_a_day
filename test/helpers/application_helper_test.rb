require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test 'time_ago_in_nicer_words' do
    a_thursday = Time.zone.parse('2019-05-23 12:00')
    travel_to a_thursday

    this_morning =  Time.zone.parse('2019-05-23 07:00')
    assert_equal time_ago_in_nicer_words(this_morning), 'today'
    assert_equal time_ago_in_nicer_words(this_morning.beginning_of_day), 'today'

    yesterday = Time.zone.parse('2019-05-22 12:00')
    assert_equal time_ago_in_nicer_words(yesterday), 'yesterday'
    assert_equal time_ago_in_nicer_words(yesterday.beginning_of_day), 'yesterday'

    tuesday = Time.zone.parse('2019-05-21 12:00')
    assert_equal time_ago_in_nicer_words(tuesday), 'this week'

    monday = Time.zone.parse('2019-05-20 12:00')
    assert_equal time_ago_in_nicer_words(monday), 'this week'
    assert_equal time_ago_in_nicer_words(monday.beginning_of_day), 'this week'
    
    last_sunday = Time.zone.parse('2019-05-19 12:00')
    assert_equal time_ago_in_nicer_words(last_sunday), 'last week'
    assert_equal time_ago_in_nicer_words(last_sunday.beginning_of_day), 'last week'
    assert_equal time_ago_in_nicer_words(last_sunday.beginning_of_week), 'last week'

    sunday_before_last = Time.zone.parse('2019-05-12 12:00')
    assert_equal time_ago_in_nicer_words(sunday_before_last), '2 weeks ago'
    assert_equal time_ago_in_nicer_words(sunday_before_last.beginning_of_week), '2 weeks ago'

    sunday_2_before_last = Time.zone.parse('2019-05-05 12:00')
    assert_equal time_ago_in_nicer_words(sunday_2_before_last), '3 weeks ago'
    assert_equal time_ago_in_nicer_words(sunday_2_before_last.beginning_of_week), '3 weeks ago'
 
    last_sunday_of_april = Time.zone.parse('2019-04-28 12:00')
    assert_equal time_ago_in_nicer_words(last_sunday_of_april), 'last month'
    assert_equal time_ago_in_nicer_words(last_sunday_of_april.beginning_of_month), 'last month'

    last_day_of_march = Time.zone.parse('2019-03-31 12:00')
    assert_equal time_ago_in_nicer_words(last_day_of_march), '2 months ago'
    assert_equal time_ago_in_nicer_words(last_day_of_march.beginning_of_month), '2 months ago'

    last_day_of_february = Time.zone.parse('2019-02-28 12:00')
    assert_equal time_ago_in_nicer_words(last_day_of_february), '3 months ago'
    assert_equal time_ago_in_nicer_words(last_day_of_february.beginning_of_month), '3 months ago'

    last_day_of_last_years_april = Time.zone.parse('2018-06-30 12:00')
    assert_equal time_ago_in_nicer_words(last_day_of_last_years_april), '11 months ago'
    assert_equal time_ago_in_nicer_words(last_day_of_last_years_april.beginning_of_month), '11 months ago'

    last_day_of_last_years_may = Time.zone.parse('2018-05-31 12:00')
    assert_equal time_ago_in_nicer_words(last_day_of_last_years_may), '1 year ago'
    assert_equal time_ago_in_nicer_words(last_day_of_last_years_may.beginning_of_month), '1 year ago'

    last_day_of_2012 = Time.zone.parse('2012-12-31 12:00')
    assert_equal time_ago_in_nicer_words(last_day_of_2012), '7 years ago'
    assert_equal time_ago_in_nicer_words(last_day_of_2012.beginning_of_year), '7 years ago'
  end

end