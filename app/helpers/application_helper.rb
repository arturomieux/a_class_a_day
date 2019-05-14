module ApplicationHelper

  def time_ago_in_nicer_words(time)
    from_time = time.to_time if ime.respond_to?(:to_time)
    to_time = Time.now
    from_time, to_time = to_time, from_time if from_time > to_time

    distance_in_years = ((to_time - from_time)/31536000.0).round
    distance_in_months = ((to_time - from_time)/2592000.0).round
    distance_in_weeks = ((to_time - from_time)/604800.0).round
    distance_in_days = ((to_time - from_time)/86400.0).round
    distance_in_hours = ((to_time - from_time)/3600.0).round
    distance_in_minutes = ((to_time - from_time)/60.0).round
    distance_in_seconds = (to_time - from_time).round

    case distance_in_minutes
    when 0..55, "#{distance_in_minutes} minutes ago"
    when 56..65, "1 hour ago"
    when 66..95, "1 and a half hours ago"
    end
  end
  
end
