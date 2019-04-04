```bash
micro@Micro ~/D/t/t/new> ruby tests/stats_benchmarks.rb
Measure Mode: wall_time
Thread ID: 70317116685840
Fiber ID: 70317141808980
Total: 38.634900
Sort by: self_time

 %self      total      self      wait     child     calls  name
 10.08      3.894     3.894     0.000     0.000  3250940   String#split
  8.57      8.265     3.310     0.000     4.954  2750940   <Module::Parsers>#parse_session
  7.06      4.222     2.729     0.000     1.493   500001   <Module::Oj>#dump
  5.32      2.453     2.057     0.000     0.396  1500000   Array#map
  4.77     38.628     1.842     0.000    36.787        3   Kernel#loop
  4.75      3.391     1.834     0.000     1.557  2750940   SortedSet#add
  3.94      1.522     1.522     0.000     0.000  9252820   String#to_i
  3.86      1.493     1.493     0.000     0.000 13500027   Hash#has_key?
  3.09      1.193     1.193     0.000     0.000  2750940   Set#add
  2.69      9.304     1.039     0.000     8.265   500000   Array#map!
  2.34      4.302     0.906     0.000     3.396   500016  *Array#each
  2.22      0.857     0.857     0.000     0.000  1000001   Array#sort!
  2.21      9.338     0.853     0.000     8.485   500000   UserSessions#stats
  2.16      0.833     0.833     0.000     0.000  1500003   IO#write
  2.11      0.815     0.815     0.000     0.000  1170913   Regexp#===
  1.55      7.035     0.598     0.000     6.437   500000   Stats#update_global_stat
  1.51      5.205     0.584     0.000     4.621   500000   Set#do_with_enum
  1.47      1.422     0.567     0.000     0.856   500000   <Module::Parsers>#parse_user
  1.38      2.224     0.534     0.000     1.690  1500000   UserSessions#sessions_browsers
  1.34      2.894     0.518     0.000     2.375  1000000   UserSessions#browsers
  1.25     11.721     0.484     0.000    11.236  1000003  *Class#new
  1.23      0.477     0.477     0.000     0.000  3250941   Kernel#respond_to?
  1.19      5.819     0.459     0.000     5.360   500000   Set#merge
  1.13      0.438     0.438     0.000     0.000   500001   Array#join
  1.10      1.539     0.426     0.000     1.114   500000   UserSessions#total_time
  1.03      0.396     0.396     0.000     0.000  2750940   String#upcase!
  1.02      0.393     0.393     0.000     0.000  2750940   String#rstrip!
  0.96      1.001     0.370     0.000     0.631  1000000   UserSessions#session_times
  0.90      0.720     0.347     0.000     0.373   500000   UserSessions#longest_session
  0.85      6.149     0.329     0.000     5.819   500000   SortedSet#merge
  0.84      0.323     0.323     0.000     0.000   500000   User#key
  0.73      1.358     0.283     0.000     1.075   500000   UserSessions#sessions_dates
  0.69      1.689     0.267     0.000     1.422   500000   User#initialize
  0.68      0.263     0.263     0.000     0.000  1000000   UserSessions#sessions_count
  0.64      1.414     0.245     0.000     1.168   500000   UserSessions#always_used_chrome?
  0.62      0.239     0.239     0.000     0.000  1000000   Integer#to_s
  0.61      9.541     0.237     0.000     9.304   500000   UserSessions#initialize
  0.60      3.242     0.231     3.011     0.000   500000   Enumerator#peek
  0.59      0.569     0.227     0.000     0.342   500000   UserSessions#used_ie?
  0.58      1.041     0.225     0.000     0.815   500000   Array#all?
  0.55      4.508     0.212     0.000     4.297   500000   Enumerable#each_entry
  0.52      0.200     0.200     0.000     0.000   500000   String#include?
  0.32      0.124     0.124     0.000     0.000   500000   Array#sum
  0.32      0.123     0.123     0.000     0.000   500000   Array#max
  0.22      0.085     0.085     0.000     0.000   500000   Array#reverse!
  0.21      0.080     0.080     0.000     0.000   500000   Kernel#instance_of?
  0.20      0.079     0.079     0.000     0.000   500000   Enumerator#next
  0.20      0.076     0.076     0.000     0.000   500001   Kernel#class
  0.01      0.003     0.003     0.000     0.000      611   <Class::File>#file?
  0.00      0.000     0.000     0.000     0.000      203   <Class::File>#join
  0.00      0.000     0.000     0.000     0.000        1   IO#close
  0.00      0.001     0.000     0.000     0.000       14   <Class::Dir>#chdir
  0.00      0.000     0.000     0.000     0.000      728   Gem::StubSpecification#data
  0.00      0.000     0.000     0.000     0.000        1   File#initialize
  0.00      0.004     0.000     0.000     0.003      339  *Array#any?
  0.00      0.000     0.000     0.000     0.000        1   Module#module_eval
  0.00      0.005     0.000     0.000     0.005      154   Gem::BasicSpecification#contains_requirable_file?
  0.00      0.004     0.000     0.000     0.004      154   Gem::BasicSpecification#have_file?
  0.00      0.000     0.000     0.000     0.000       17   <Class::File>#exist?
  0.00      0.000     0.000     0.000     0.000      153   Gem::StubSpecification#missing_extensions?
  0.00      0.000     0.000     0.000     0.000      269   Gem::StubSpecification#extensions
  0.00      0.000     0.000     0.000     0.000      153   Gem::StubSpecification#name
  0.00      0.000     0.000     0.000     0.000      154   Gem::BasicSpecification#have_extensions?
  0.00      0.001     0.000     0.000     0.001      154   <Module::Gem::BundlerVersionFinder>#compatible?
  0.00      0.000     0.000     0.000     0.000      153   Gem::StubSpecification#raw_require_paths
  0.00      0.000     0.000     0.000     0.000      154   <Module::Gem>#suffixes
  0.00      0.000     0.000     0.000     0.000      153   Gem::StubSpecification#full_name
  0.00      0.000     0.000     0.000     0.000        2   <Class::Dir>#pwd
  0.00      0.000     0.000     0.000     0.000      364   Kernel#untaint
  0.00      0.000     0.000     0.000     0.000       16   <Class::File>#expand_path
  0.00      0.000     0.000     0.000     0.000      153   Gem::StubSpecification#default_gem?
  0.00     38.635     0.000     0.000    38.635        1   Object#cpu_profiling
  0.00      0.000     0.000     0.000     0.000        3   Exception#backtrace
  0.00     38.629     0.000     0.000    38.629        1   <Class::IO>#open
  0.00      0.006     0.000     0.000     0.006        2  *Kernel#require
  0.00      0.000     0.000     0.000     0.000       17   Gem::BasicSpecification#gem_build_complete_path
  0.00      0.006     0.000     0.000     0.006        1   <Class::Gem::Specification>#find_by_path
  0.00      0.000     0.000     0.000     0.000       48   Gem::BasicSpecification#extension_dir
  0.00      0.000     0.000     0.000     0.000        1   Enumerable#slice_before
  0.00      0.006     0.000     0.000     0.006        1   Thread::Mutex#synchronize
  0.00      0.001     0.000     0.000     0.001        2   <Module::Gem::BundlerVersionFinder>#lockfile_contents
  0.00      0.001     0.000     0.000     0.001        2   <Module::Gem::BundlerVersionFinder>#bundler_version_with_reason
  0.00      0.000     0.000     0.000     0.000        2   Thread::Mutex#lock
  0.00      0.000     0.000     0.000     0.000        2   MonitorMixin#mon_exit
  0.00      0.006     0.000     0.000     0.006        1   Stats#initialize
  0.00      0.000     0.000     0.000     0.000        1   <Module::Gem>#default_dir
  0.00      0.000     0.000     0.000     0.000        2   <Class::File>#basename
  0.00      0.000     0.000     0.000     0.000        1   Enumerable#count
  0.00      0.000     0.000     0.000     0.000        2   MonitorMixin#mon_enter
  0.00      0.000     0.000     0.000     0.000        1   String#[]
  0.00      0.000     0.000     0.000     0.000        1   Gem::BasicSpecification#default_gem?
  0.00      0.006     0.000     0.000     0.006        2  *SortedSet#initialize
  0.00     38.629     0.000     0.000    38.629        1   Stats#call
  0.00      0.000     0.000     0.000     0.000       14   Module#method_added
  0.00      0.000     0.000     0.000     0.000        2   Gem::Specification#extensions
  0.00      0.000     0.000     0.000     0.000        2   <Module::Gem::BundlerVersionFinder>#bundle_update_bundler_version
  0.00      0.000     0.000     0.000     0.000        3   Module#===
  0.00      0.000     0.000     0.000     0.000        1   Module#alias_method
  0.00      0.001     0.000     0.000     0.001        2   <Module::Gem::Util>#traverse_parents
  0.00      0.001     0.000     0.000     0.001        2   <Module::Gem::BundlerVersionFinder>#lockfile_version
  0.00      0.000     0.000     0.000     0.000        2   MonitorMixin#mon_check_owner
  0.00      0.000     0.000     0.000     0.000        1   SortedSet#each
  0.00      0.000     0.000     0.000     0.000        1   Module#remove_method
  0.00      0.000     0.000     0.000     0.000        3   Exception#exception
  0.00      0.000     0.000     0.000     0.000        4   <Object::Object>#[]
  0.00      0.000     0.000     0.000     0.000        1   Kernel#raise
  0.00      0.000     0.000     0.000     0.000        1   #<Class:0x00007fe7f5934e20>#to_spec
  0.00      0.000     0.000     0.000     0.000        1   Gem::Specification#missing_extensions?
  0.00      0.000     0.000     0.000     0.000        6   <Class::Thread>#current
  0.00     38.635     0.000     0.000    38.635        1   Object#work
  0.00      0.000     0.000     0.000     0.000        1   String#freeze
  0.00      0.000     0.000     0.000     0.000        2   SortedSet#to_a
  0.00      0.000     0.000     0.000     0.000        1   <Class::Gem::BasicSpecification>#default_specifications_dir
  0.00      0.006     0.000     0.000     0.006       15  *Enumerable#find
  0.00      0.000     0.000     0.000     0.000        1   Enumerator#initialize
  0.00      0.000     0.000     0.000     0.000        1   Set#initialize
  0.00      0.000     0.000     0.000     0.000        2   Kernel#block_given?
  0.00      0.000     0.000     0.000     0.000        2   Exception#to_s
  0.00      0.000     0.000     0.000     0.000        1   <Class::File>#dirname
  0.00      0.000     0.000     0.000     0.000        1   Hash#keys
  0.00      0.000     0.000     0.000     0.000        1   <Class::Gem::Specification>#stubs
  0.00      0.000     0.000     0.000     0.000        1   Kernel#dup
  0.00      0.000     0.000     0.000     0.000        1   <Class::IO>#foreach
  0.00      0.006     0.000     0.000     0.006        1   <Module::Gem>#try_activate
  0.00      0.000     0.000     0.000     0.000        1   String#start_with?
  0.00      0.000     0.000     0.000     0.000        1   <Module::Gem>#find_unresolved_default_spec
  0.00      0.006     0.000     0.000     0.006        1   <Class::SortedSet>#setup
  0.00      0.000     0.000     0.000     0.000        1   <Class::Gem::Specification>#unresolved_deps
  0.00      0.000     0.000     0.000     0.000        1   Kernel#initialize_dup
  0.00      0.000     0.000     0.000     0.000        1   Gem::Specification#full_name
  0.00      0.000     0.000     0.000     0.000        1   Exception#initialize
  0.00      0.000     0.000     0.000     0.000        1   IO#closed?
  0.00      0.000     0.000     0.000     0.000        2   Exception#message
  0.00      0.000     0.000     0.000     0.000        1   NilClass#nil?
  0.00      0.000     0.000     0.000     0.000        1   String#end_with?
  0.00      0.000     0.000     0.000     0.000        1   Hash#initialize
  0.00      0.000     0.000     0.000     0.000        1   Gem::Specification#gems_dir
  0.00      0.001     0.000     0.000     0.001        2   <Module::Gem::BundlerVersionFinder>#bundler_version
  0.00      0.000     0.000     0.000     0.000        1   Module#method_removed
  0.00      0.000     0.000     0.000     0.000        1   String#initialize_copy
  0.00      0.000     0.000     0.000     0.000        1   Enumerator#each
  0.00      0.000     0.000     0.000     0.000        2   Thread::Mutex#unlock
  0.00      0.000     0.000     0.000     0.000        1   Gem::Specification#raw_require_paths

* indicates recursively called methods
Measure Mode: wall_time
Thread ID: 70317116685840
Fiber ID: 70317141854440
Total: 38.627769
Sort by: self_time

 %self      total      self      wait     child     calls  name
  6.12     38.628     2.362     0.000    36.265        1   <Class::IO>#foreach
  1.25      0.483     0.483     0.000     0.000  3250940   String#start_with?
  0.43     35.782     0.166    35.616     0.000   500000   Enumerator::Yielder#<<
  0.00     38.628     0.000     0.000    38.628        1   Enumerator::Generator#each
  0.00     38.628     0.000     0.000    38.628        2  *Enumerator#each
  0.00      0.000     0.000     0.000     0.000        1   Exception#initialize

* indicates recursively called methods
Run options: --seed 54087

# Running:



Finished in 0.000750s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
micro@Micro ~/D/t/t/new>
```
