# frozen_string_literal: true

require_relative "parsers"

# Example of the sessions:
# [
#   "session,0,0,Safari 29,87,2016-10-23",
#   "session,0,1,Firefox 12,118,2017-02-27",
#   "session,0,2,Internet Explorer 28,31,2017-03-28",
#   "session,0,3,Internet Explorer 28,109,2016-09-15",
#   "session,0,4,Safari 39,104,2017-09-27",
#   "session,0,5,Internet Explorer 35,6,2016-09-01"
# ]
class UserSessions
  INTERNET_EXPLORER = "INTERNET EXPLORER".freeze
  CHROME_REG = /CHROME/.freeze

  def initialize(sessions)
    @sessions = sessions.map! { |session_string| Parsers.parse_session(session_string) }
  end

  def stats
    {
      sessionsCount: sessions_count,
      totalTime: total_time,
      longestSession: longest_session,
      browsers: browsers,
      usedIE: used_ie?,
      alwaysUsedChrome: always_used_chrome?,
      dates: sessions_dates
    }
  end

  def total_time
    "#{session_times.sum} min."
  end

  def longest_session
    "#{session_times.max} min."
  end

  def browsers
    @browsers ||= sessions_browsers.join(', ')
  end

  def sessions_count
    sessions.size
  end

  def used_ie?
    browsers.include?(INTERNET_EXPLORER)
  end

  def always_used_chrome?
    sessions_browsers.all?(CHROME_REG)
  end

  def sessions_dates
    sessions.map { |session| session[:date] }.sort!.reverse!
  end

  def sessions_browsers
    @sessions_browsers ||= sessions.map { |session| session[:browser].upcase! }.sort!
  end

  private

  attr_reader :sessions

  def session_times
    @session_times ||= sessions.map { |session| session[:time] }
  end
end
