# frozen_string_literal: true

require "benchmark/ips"
require_relative "./base"
require_relative "../parsers"

# Parsing using String#split works a bit faster:
#
# String#match
#                           1.118M (± 2.6%) i/s -     11.190M in  10.019171s
# String#split
#                           1.361M (± 1.4%) i/s -     13.641M in  10.026054s
#
# Comparison:
# String#split:  1360795.4 i/s
# String#match:  1117718.5 i/s - 1.22x  slower
def benchmark_parse!
  session_reg = /,(?<user_id>[0-9]+),(?<session_id>[0-9]+),(?<browser>[\w\s]+),(?<time>[0-9]+),(?<date>[0-9-]+)/
  test_string = "session,0,0,Safari 29,87,2016-10-23"

  Benchmark.ips do |x|
    x.config(time: 10, warmup: 2)

    x.report('String#match') do
      session_reg.match(test_string)
    end

    x.report('String#split') do
      fields = test_string.split(',')

      {
        user_id: fields[1],
        session_id: fields[2],
        browser: fields[3],
        time: fields[4],
        date: fields[5],
      }
    end

    x.compare!
  end
end

# benchmark_parse!

describe "Parsers" do
  it ".parse_user" do
    [
      "user,0,Leida,Cira,0",
      { id: 0, first_name: "Leida", last_name: "Cira", age: 0 },

      "user,1,Palmer,Katrina,65",
      { id: 1, first_name: "Palmer", last_name: "Katrina", age: 65 },

      "user,2,Gregory,Santos,86",
      { id: 2, first_name: "Gregory", last_name: "Santos", age: 86 },
    ].each_slice(2) do |payload, result|
      parsed_session = Parsers.parse_user(payload)

      %i{id first_name last_name age}.each do |key|
        assert_equal result[key], parsed_session[key]
      end
    end
  end

  it ".parse_session" do
    [
      "session,0,0,Safari 29,87,2016-10-23",
      { user_id: 0, session_id: 0, browser: "Safari 29", time: 87, date: "2016-10-23" },

      "session,2,3,Chrome 20,84,2016-11-25",
      { user_id: 2, session_id: 3, browser: "Chrome 20", time: 84, date: "2016-11-25" },

      "session,0,3,Internet Explorer 28,109,2016-09-15",
      { user_id: 0, session_id: 3, browser: "Internet Explorer 28", time: 109, date: "2016-09-15" },
    ].each_slice(2) do |payload, result|
      parsed_session = Parsers.parse_session(payload)

      %i{user_id session_id browser time date}.each do |key|
        assert_equal result[key], parsed_session[key]
      end
    end
  end
end
