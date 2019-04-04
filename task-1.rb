# frozen_string_literal: true

require 'json'
require 'benchmark'
require 'benchmark/ips'
require 'minitest/autorun'
require 'minitest/benchmark'
require 'ruby-prof'
require 'memory_profiler'

GC.disable
# puts Process.pid

RubyProf.measure_mode = RubyProf::MEMORY

# RSS - Resident Set Size
# объём памяти RAM, выделенной процессу в настоящее время
def print_memory_usage
  "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i / 1024)
end

USER_REG = /,(?<id>[0-9]+),(?<first_name>[\w]+),(?<last_name>[\w]+),(?<age>[0-9]+)/.freeze
SESSION_REG = /,(?<user_id>[0-9]+),(?<session_id>[0-9]+),(?<browser>[\w\s]+),(?<time>[0-9]+),(?<date>[0-9-]+)/.freeze

class User
  class Sessions
    attr_reader :sessions

    def initialize(sessions)
      @sessions = sessions
    end

    def sessions_time
      @sessions_time ||= sessions.map { |s| s[:time].to_i }
    end

    def sessions_dates
      sessions.map do |s|
        s[:date]
      end.sort_by! do |date_string|
        date_string.delete('-')
      end.reverse!
    end
  end

  attr_reader :attributes, :sessions

  def initialize(attributes:, sessions:)
    @attributes = attributes
    @sessions = Sessions.new(sessions)
  end

  def key
    "#{attributes[:first_name]} #{attributes[:last_name]}"
  end

  def stats
    @stats ||= begin
      browser_string = sessions_browsers.join(', ')

      {
        sessionsCount: sessions.sessions.count,
        totalTime: "#{sessions.sessions_time.sum} min.",
        longestSession: "#{sessions.sessions_time.max} min.",
        browsers: browser_string,
        usedIE: browser_string.include?('INTERNET EXPLORER'),
        alwaysUsedChrome: sessions_browsers.all? { |b| b =~ /CHROME/ },
        dates: sessions.sessions_dates
      }
    end
  end

  def sessions_browsers
    @sessions_browsers ||= sessions.sessions.map { |s| s[:browser].upcase! }.sort!
  end
end

def parse_user(user)
  USER_REG.match(user)
end

def parse_session(session)
  SESSION_REG.match(session)
end

def work(lines, file = nil)
  report = {}
  report[:totalUsers] = 0
  report[:uniqueBrowsersCount] = 0
  report[:totalSessions] = 0
  report[:allBrowsers] = ''
  report[:usersStats] = {}
  unique_browsers = []

  file = IO.foreach(file || 'data_large.txt')
  if lines
    file = file.take(lines)
  end

  file.slice_before do |line|
    line.start_with?('user')
  end.each do |user_and_sessions|
    user_line, *sessions_lines = user_and_sessions
    sessions = sessions_lines.map!(&method(:parse_session))
    user = User.new(attributes: parse_user(user_line), sessions: sessions)

    report[:usersStats][user.key] = user.stats
    report[:totalUsers] += 1
    report[:totalSessions] += user.stats[:sessionsCount]

    user.sessions_browsers.each do |browser|
      unique_browsers << browser
    end
  end

  unique_browsers.uniq!

  report[:uniqueBrowsersCount] = unique_browsers.count
  report[:allBrowsers] = unique_browsers.sort!.join(',')

  # Отчёт в json
  #   - Сколько всего юзеров +
  #   - Сколько всего уникальных браузеров +
  #   - Сколько всего сессий +
  #   - Перечислить уникальные браузеры в алфавитном порядке через запятую и капсом +
  #
  #   - По каждому пользователю
  #     - сколько всего сессий +
  #     - сколько всего времени +
  #     - самая длинная сессия +
  #     - браузеры через запятую +
  #     - Хоть раз использовал IE? +
  #     - Всегда использовал только Хром? +
  #     - даты сессий в порядке убывания через запятую +

  File.write('result.json', report)
end

time = Benchmark.measure {
  puts "before: #{print_memory_usage}"

  report = MemoryProfiler.report do
    work(500_000,'data_large.txt')
  end
  report.pretty_print(scale_bytes: true)

  puts "after: #{print_memory_usage}"
}
puts time.real


# class BenchmarkWork < Minitest::Benchmark
#   def self.bench_range
#     [1, 10, 100, 1_000, 10_000, 100_000]
#   end
#
#   def bench_work
#     assert_performance_linear(0.99, &method(:work))
#   end
# end


def test_memory
  result = RubyProf.profile { work(20_000, 'data_large.txt') }
  # printer = RubyProf::CallTreePrinter.new(result)
  # printer.print(path: '.', profile: 'profile')
  printer = RubyProf::GraphPrinter.new(result)
  printer.print(STDOUT, :min_percent => 2)
  # printer = RubyProf::FlatPrinter.new(result)
  # printer.print(STDOUT)
end

# test_memory

def benchmark_it!
  Benchmark.ips do |x|
    x.config(time: 10, warmup: 2)

    x.report('Array#include?') do
      a = ('A'..'Z').to_a
      b = ('K'..'Z').to_a

      a.each do |item|
        b << item
      end

      b.uniq!
    end

    x.report('Hash') do
      a = ('A'..'Z').to_a
      b = ('K'..'Z').to_a
      h = Hash.new(0)

      a.each do |item|
        h[item] += 1
      end

      b.each do |item|
        h[item] += 1
      end

      h.keys
    end

    x.compare!
  end
end

# benchmark_it!

# class TestMe < Minitest::Test
#   def setup
#     File.write('result.json', '')
#     File.write('data.txt',
#                'user,0,Leida,Cira,0
# session,0,0,Safari 29,87,2016-10-23
# session,0,1,Firefox 12,118,2017-02-27
# session,0,2,Internet Explorer 28,31,2017-03-28
# session,0,3,Internet Explorer 28,109,2016-09-15
# session,0,4,Safari 39,104,2017-09-27
# session,0,5,Internet Explorer 35,6,2016-09-01
# user,1,Palmer,Katrina,65
# session,1,0,Safari 17,12,2016-10-21
# session,1,1,Firefox 32,3,2016-12-20
# session,1,2,Chrome 6,59,2016-11-11
# session,1,3,Internet Explorer 10,28,2017-04-29
# session,1,4,Chrome 13,116,2016-12-28
# user,2,Gregory,Santos,86
# session,2,0,Chrome 35,6,2018-09-21
# session,2,1,Safari 49,85,2017-05-22
# session,2,2,Firefox 47,17,2018-02-02
# session,2,3,Chrome 20,84,2016-11-25
# ')
#   end
#
#   def test_result
#     work(false,'data.txt')
#
#     expected_result = '{"totalUsers":3,"uniqueBrowsersCount":14,"totalSessions":15,"allBrowsers":"CHROME 13,CHROME 20,CHROME 35,CHROME 6,FIREFOX 12,FIREFOX 32,FIREFOX 47,INTERNET EXPLORER 10,INTERNET EXPLORER 28,INTERNET EXPLORER 35,SAFARI 17,SAFARI 29,SAFARI 39,SAFARI 49","usersStats":{"Leida Cira":{"sessionsCount":6,"totalTime":"455 min.","longestSession":"118 min.","browsers":"FIREFOX 12, INTERNET EXPLORER 28, INTERNET EXPLORER 28, INTERNET EXPLORER 35, SAFARI 29, SAFARI 39","usedIE":true,"alwaysUsedChrome":false,"dates":["2017-09-27","2017-03-28","2017-02-27","2016-10-23","2016-09-15","2016-09-01"]},"Palmer Katrina":{"sessionsCount":5,"totalTime":"218 min.","longestSession":"116 min.","browsers":"CHROME 13, CHROME 6, FIREFOX 32, INTERNET EXPLORER 10, SAFARI 17","usedIE":true,"alwaysUsedChrome":false,"dates":["2017-04-29","2016-12-28","2016-12-20","2016-11-11","2016-10-21"]},"Gregory Santos":{"sessionsCount":4,"totalTime":"192 min.","longestSession":"85 min.","browsers":"CHROME 20, CHROME 35, FIREFOX 47, SAFARI 49","usedIE":false,"alwaysUsedChrome":false,"dates":["2018-09-21","2018-02-02","2017-05-22","2016-11-25"]}}}' + "\n"
#     assert_equal expected_result, File.read('result.json')
#   end
# end
