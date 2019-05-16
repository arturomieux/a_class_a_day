module ApplicationHelper

  def time_ago_in_nicer_words(time)

    if time.today?
      'today'
    elsif time >= Time.now.yesterday.beginning_of_day
      'yesterday'
    elsif time >= Time.now.beginning_of_week
      'this week'
    elsif time >= Time.now.days_ago(7).beginning_of_week
      'last week'
    elsif time >= Time.now.days_ago.beginning_of_week
      "#{weeks} weeks ago"
    elsif time >= Time.now.days_ago.beginning_of_week
      "#{months} months ago"
    elsif time >= Time.now.days_ago.beginning_of_week
      "#{years} years ago"
    end

  end
  
end
