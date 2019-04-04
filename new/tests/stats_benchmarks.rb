# frozen_string_literal: true

require "benchmark"
require "benchmark/ips"
require "minitest/autorun"
require "minitest/benchmark"
# require "ruby-prof"
# require "memory_profiler"
require_relative "../stats"


# GC.disable
# puts Process.pid

# RubyProf.measure_mode = RubyProf::MEMORY

# RSS - Resident Set Size
# объём памяти RAM, выделенной процессу в настоящее время
def print_memory_usage
  "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i / 1024)
end

def work(lines = nil)
  Stats.new("../data_large.txt", lines).call
end

time = Benchmark.measure {
  puts "before: #{print_memory_usage}"

  work
  # report = MemoryProfiler.report do
  #   work
  # end
  # report.pretty_print(scale_bytes: true)

  puts "after: #{print_memory_usage}"
}
puts time.real

def cpu_profiling
  result = RubyProf.profile { work }
  printer = RubyProf::CallStackPrinter.new(result)
  printer.print(STDOUT, :min_percent => 2)
  # printer = RubyProf::CallTreePrinter.new(result)
  # printer.print(path: '.', profile: 'profile')
  # printer = RubyProf::GraphPrinter.new(result)
  # printer.print(STDOUT, min_percent: 2)
  # printer = RubyProf::FlatPrinter.new(result)
  # printer.print(STDOUT)
end

# cpu_profiling
