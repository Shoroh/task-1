# frozen_string_literal: true

require "benchmark/ips"
require_relative "./base"
require_relative "../user_sessions"

TEST_PAYLOAD_WITH_IE = [
  "session,0,0,Safari 29,87,2016-10-23",
  "session,0,1,Firefox 12,118,2017-02-27",
  "session,0,2,Internet Explorer 28,31,2017-03-28",
  "session,0,3,Internet Explorer 28,109,2016-09-15",
  "session,0,4,Safari 39,104,2017-09-27",
  "session,0,5,Internet Explorer 35,6,2016-09-01"
]

TEST_PAYLOAD_WITHOUT_IE = [
  "session,0,0,Safari 29,87,2016-10-23",
  "session,0,1,Firefox 12,118,2017-02-27",
  "session,0,4,Safari 39,104,2017-09-27",
]

TEST_PAYLOAD_WITH_NOT_THE_ONLY_CHROME = [
  "session,0,0,Safari 29,87,2016-10-23",
  "session,0,1,Chrome 19,118,2017-02-27",
  "session,0,2,Internet Explorer 28,31,2017-03-28",
  "session,0,3,Internet Explorer 28,109,2016-09-15",
  "session,0,4,Chrome 55,104,2017-09-27",
  "session,0,5,Internet Explorer 35,6,2016-09-01"
]

TEST_PAYLOAD_WITH_ONLY_CHROME = [
  "session,0,0,Chrome 29,87,2016-10-23",
  "session,0,1,Chrome 19,118,2017-02-27",
  "session,0,2,Chrome 28,31,2017-03-28",
  "session,0,3,Chrome 28,109,2016-09-15",
  "session,0,4,Chrome 55,104,2017-09-27",
  "session,0,5,Chrome 35,6,2016-09-01"
]

DATES_REFERENCE = %w[
  2017-09-27
  2017-03-28
  2017-02-27
  2016-10-23
  2016-09-15
  2016-09-01
]

BROWSERS_REFERENCE = [
  "FIREFOX 12",
  "INTERNET EXPLORER 28",
  "INTERNET EXPLORER 28",
  "INTERNET EXPLORER 35",
  "SAFARI 29",
  "SAFARI 39"
]

BROWSERS_REFERENCE_STRING = BROWSERS_REFERENCE.join(', ')

# As we can see here, String#include? works upto 5x faster. Let's use it!
#
# Using Array#any? with regexp
# 1.298M (± 2.4%) i/s -     13.070M in  10.073557s
# Using String#include?
# 6.625M (± 2.3%) i/s -     66.405M in  10.028907s
#
# Comparison:
#   Using String#include?:  6625332.0 i/s
# Using Array#any? with regexp:  1298286.2 i/s - 5.10x  slower
def benchmark_used_ie!
  Benchmark.ips do |x|
    x.config(time: 10, warmup: 2)

    x.report("Using Array#any? with regexp") do
      BROWSERS_REFERENCE.any?(/INTERNET EXPLORER/)
    end

    x.report("Using String#include?") do
      BROWSERS_REFERENCE_STRING.include?("INTERNET EXPLORER")
    end

    x.compare!
  end
end

# benchmark_used_ie!

describe "UserSessions" do
  describe "BasicFeatures" do
    before do
      @user_sessions = UserSessions.new(TEST_PAYLOAD_WITH_IE.dup)
    end

    describe "#total_time" do
      it "returns `455 min.`" do
        assert_equal "455 min.", user_sessions.total_time
      end
    end

    describe "#longest_session" do
      it "returns `118 min.`" do
        assert_equal "118 min.", user_sessions.longest_session
      end
    end

    describe "#browsers" do
      it "return sorted string of all used browsers" do
        assert_equal BROWSERS_REFERENCE_STRING, user_sessions.browsers
      end
    end

    describe "#sessions_count" do
      it "returns 6" do
        assert_equal 6, user_sessions.sessions_count
      end
    end

    describe "#sessions_dates" do
      it "returns sorted array of all sessions dates" do
        assert_equal DATES_REFERENCE, user_sessions.sessions_dates
      end
    end
  end

  describe "#used_ie?" do
    describe "when IE presents at least in one session" do
      it "returns True" do
        user_sessions = UserSessions.new(TEST_PAYLOAD_WITH_IE.dup)

        assert user_sessions.used_ie?
      end
    end

    describe "when IE wasn't used at all" do
      it "returns False" do
        user_sessions = UserSessions.new(TEST_PAYLOAD_WITHOUT_IE.dup)

        refute user_sessions.used_ie?
      end
    end
  end

  describe "#always_used_chrome?" do
    describe "when All Sessions used Chrome" do
      it "returns True" do
        user_sessions = UserSessions.new(TEST_PAYLOAD_WITH_ONLY_CHROME.dup)

        assert user_sessions.always_used_chrome?
      end
    end

    describe "when not All Sessions used Chrome" do
      it "returns False" do
        user_sessions = UserSessions.new(TEST_PAYLOAD_WITH_NOT_THE_ONLY_CHROME.dup)

        refute user_sessions.always_used_chrome?
      end
    end
  end

  private

  attr_reader :user_sessions
end
