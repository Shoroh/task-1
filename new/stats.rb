# frozen_string_literal: true

require "set"
require "oj"
require_relative "user"
require_relative "user_sessions"

class Stats
  STOP_WORD = "user"
  COMMA = ","

  def initialize(path_to_file = "../data.txt", lines = nil)
    @report = {}
    @report[:totalUsers] = 0
    @report[:uniqueBrowsersCount] = 0
    @report[:totalSessions] = 0
    @report[:allBrowsers] = ""

    @unique_browsers = SortedSet.new
    @file = IO.foreach(path_to_file)

    if lines
      @file = @file.take(lines)
    end
  end

  def call
    File.open("result.json", "w") do |report_file|
      report_file.write('{"usersStats":{')

      all_blocks = file.slice_before do |line|
        line.start_with?(STOP_WORD)
      end.each

      loop do
        user_line, *sessions_lines = all_blocks.next

        user = User.new(user_line)
        sessions = UserSessions.new(sessions_lines)

        report_file.write(%Q{"#{user.key}":})
        report_file.write(Oj.dump(sessions.stats, mode: :compat))
        update_global_stat(sessions)

        if all_blocks.peek
          report_file.write(COMMA)
        end
      rescue StopIteration
        break
      end

      report_file.write("},")

      report[:uniqueBrowsersCount] = unique_browsers.count
      report[:allBrowsers] = unique_browsers.to_a.join(COMMA)

      stats_line = Oj.dump(report, mode: :compat)[1..-2]

      report_file.write(stats_line)
      report_file.write("}\n")
    end
  end

  private

  attr_reader :file, :report, :unique_browsers

  def update_global_stat(sessions)
    report[:totalUsers] += 1
    report[:totalSessions] += sessions.sessions_count
    unique_browsers.merge(sessions.sessions_browsers)
  end
end

