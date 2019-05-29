module ApplicationHelper

  def time_ago_in_nicer_words(time)

    if time.today?
      'today'
    elsif time >= Time.now.yesterday.beginning_of_day
      'yesterday'
    elsif time >= Time.now.beginning_of_week
      'this week'
    elsif time >= Time.now.weeks_ago(1).beginning_of_week
      'last week'
    # "#{weeks} weeks ago"
    elsif time >= Time.now.months_ago(1).beginning_of_month
    'last month'
    # "#{months} months ago"
    elsif time >= Time.now.years_ago(1).beginning_of_year
    'last year'
    # "#{years} years ago"
    end

  end
  
end
