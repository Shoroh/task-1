```bash
micro@Micro ~/D/t/t/new> ruby tests/stats_benchmarks.rb
before: 19 MB
Total allocated: 3.63 GB (42707235 objects)
Total retained:  186.0 B (4 objects)

allocated memory by gem
-----------------------------------
   3.63 GB  other
 178.18 kB  rubygems
   4.35 kB  lib

allocated memory by file
-----------------------------------
   2.16 GB  /Users/micro/Development/the_course/task-1/new/parsers.rb
 882.88 MB  /Users/micro/Development/the_course/task-1/new/stats.rb
 563.58 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb
   20.0 MB  /Users/micro/Development/the_course/task-1/new/user.rb
 166.96 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb
   4.35 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb
   3.69 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb
   3.65 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb
   3.65 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/stub_specification.rb
   160.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/bundler_version_finder.rb
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/defaults.rb
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb
    40.0 B  tests/stats_benchmarks.rb

allocated memory by location
-----------------------------------
   1.21 GB  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
 638.22 MB  /Users/micro/Development/the_course/task-1/new/parsers.rb:32
 415.68 MB  /Users/micro/Development/the_course/task-1/new/stats.rb:41
 351.58 MB  /Users/micro/Development/the_course/task-1/new/stats.rb:34
  200.0 MB  /Users/micro/Development/the_course/task-1/new/parsers.rb:12
 127.87 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:55
  116.0 MB  /Users/micro/Development/the_course/task-1/new/parsers.rb:20
  116.0 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:32
  84.86 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:43
   57.6 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:59
   57.6 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:63
  40.02 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
  40.02 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
  39.61 MB  /Users/micro/Development/the_course/task-1/new/stats.rb:35
  39.61 MB  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:71
   36.0 MB  /Users/micro/Development/the_course/task-1/new/stats.rb:38
   20.0 MB  /Users/micro/Development/the_course/task-1/new/stats.rb:40
   20.0 MB  /Users/micro/Development/the_course/task-1/new/stats.rb:37
   20.0 MB  /Users/micro/Development/the_course/task-1/new/user.rb:12
  99.18 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:322
  36.96 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:321
  22.68 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:327
   8.42 kB  /Users/micro/Development/the_course/task-1/new/stats.rb:28
   6.45 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:326
   3.96 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:725
   3.65 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/stub_specification.rb:147
   2.91 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:118
   2.64 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb:111
   1.36 kB  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:46
   800.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb:113
   736.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54
   684.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:53
   608.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:32
   254.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb:109
   232.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:94
   232.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:13
   208.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:38
   168.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:20
   114.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:84
    80.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/bundler_version_finder.rb:51
    80.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/bundler_version_finder.rb:80
    80.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:776
    80.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:19
    80.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:47
    72.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:30
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/defaults.rb:38
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb:1040
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:782
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:808
    40.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:51

allocated memory by class
-----------------------------------
   1.56 GB  String
 986.22 MB  Hash
 928.59 MB  Array
 100.37 MB  MatchData
   36.0 MB  UserSessions
   20.0 MB  User
   8.42 kB  File
   8.42 kB  IO
   488.0 B  Thread::Backtrace
   480.0 B  Proc
   280.0 B  Enumerator
    80.0 B  LoadError
    72.0 B  Thread::Mutex
    56.0 B  Enumerator::Generator
    48.0 B  Enumerator::Yielder
    40.0 B  SortedSet
    40.0 B  Stats

allocated objects by gem
-----------------------------------
  42704958  other
      2199  rubygems
        78  lib

allocated objects by file
-----------------------------------
  25507520  /Users/micro/Development/the_course/task-1/new/parsers.rb
  10250972  /Users/micro/Development/the_course/task-1/new/stats.rb
   6446465  /Users/micro/Development/the_course/task-1/new/user_sessions.rb
    500000  /Users/micro/Development/the_course/task-1/new/user.rb
      2072  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb
        78  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb
        66  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb
        34  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/stub_specification.rb
        21  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb
         4  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/bundler_version_finder.rb
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/defaults.rb
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb
         1  tests/stats_benchmarks.rb

allocated objects by location
-----------------------------------
  19256580  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
   4500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41
   3750945  /Users/micro/Development/the_course/task-1/new/stats.rb:34
   3000000  /Users/micro/Development/the_course/task-1/new/parsers.rb:12
   2750940  /Users/micro/Development/the_course/task-1/new/parsers.rb:32
   1046163  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:55
   1000408  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
   1000408  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
    949743  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:59
    949743  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:63
    500000  /Users/micro/Development/the_course/task-1/new/parsers.rb:20
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:35
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:37
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:38
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:40
    500000  /Users/micro/Development/the_course/task-1/new/user.rb:12
    500000  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:32
    500000  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:43
    500000  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:71
      1386  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:322
       308  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:321
       279  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:327
        74  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:725
        62  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:326
        42  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb:111
        34  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:46
        34  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/stub_specification.rb:147
        20  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb:113
        18  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:118
         9  /Users/micro/Development/the_course/task-1/new/stats.rb:32
         8  /Users/micro/Development/the_course/task-1/new/stats.rb:53
         4  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/util.rb:109
         3  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54
         2  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:38
         2  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/bundler_version_finder.rb:51
         2  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/bundler_version_finder.rb:80
         2  /Users/micro/Development/the_course/task-1/new/stats.rb:19
         2  /Users/micro/Development/the_course/task-1/new/stats.rb:20
         2  /Users/micro/Development/the_course/task-1/new/stats.rb:47
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/basic_specification.rb:84
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/defaults.rb:38
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb:1040
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:776
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:782
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:808
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:94
         1  /Users/micro/Development/the_course/task-1/new/stats.rb:13
         1  /Users/micro/Development/the_course/task-1/new/stats.rb:28
         1  /Users/micro/Development/the_course/task-1/new/stats.rb:30
         1  /Users/micro/Development/the_course/task-1/new/stats.rb:51

allocated objects by class
-----------------------------------
  30447189  String
   6650636  Array
   4250943  Hash
    500000  User
    500000  UserSessions
    358450  MatchData
         6  Proc
         2  Enumerator
         1  Enumerator::Generator
         1  Enumerator::Yielder
         1  File
         1  IO
         1  LoadError
         1  SortedSet
         1  Stats
         1  Thread::Backtrace
         1  Thread::Mutex

retained memory by gem
-----------------------------------
    80.0 B  other
    66.0 B  lib
    40.0 B  rubygems

retained memory by file
-----------------------------------
    80.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb
    66.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb

retained memory by location
-----------------------------------
    80.0 B  /Users/micro/Development/the_course/task-1/new/stats.rb:32
    66.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:725
    40.0 B  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb:1040

retained memory by class
-----------------------------------
   186.0 B  String

retained objects by gem
-----------------------------------
         2  other
         1  lib
         1  rubygems

retained objects by file
-----------------------------------
         2  /Users/micro/Development/the_course/task-1/new/stats.rb
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb

retained objects by location
-----------------------------------
         2  /Users/micro/Development/the_course/task-1/new/stats.rb:32
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb:1040
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:725

retained objects by class
-----------------------------------
         4  String


Allocated String Report
-----------------------------------
   2750940  "session"
   2750940  /Users/micro/Development/the_course/task-1/new/parsers.rb:23

    524436  "0"
    522803  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       816  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
       816  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    500000  "alwaysUsedChrome"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "browsers"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "dates"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "longestSession"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "sessionsCount"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "totalTime"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "usedIE"
    500000  /Users/micro/Development/the_course/task-1/new/stats.rb:41

    500000  "user"
    500000  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    473297  "1"
    472469  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       416  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       411  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    423700  "2"
    422831  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       440  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       428  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    373453  "3"
    372605  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       427  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       420  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    324051  "4"
    323156  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       454  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       440  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    274311  "5"
    273450  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       440  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       420  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    224444  "6"
    223538  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       462  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       443  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    174159  "7"
    173240  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       475  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       443  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

    123994  "8"
    123047  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       498  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       448  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     73786  "9"
     72741  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
       542  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       502  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     46257  "119"
     22865  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     22293  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1098  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     45320  "118"
     22887  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     21287  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1145  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     43818  "117"
     22717  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     20018  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1082  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     43555  "116"
     23069  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     19355  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1130  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     42413  "115"
     22961  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     18305  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1146  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     40996  "114"
     22715  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     17204  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1076  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     40451  "113"
     22868  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     16533  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1049  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     39466  "112"
     22718  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     15713  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1034  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     38789  "111"
     22838  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     14903  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1047  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     38209  "110"
     22901  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     14239  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1068  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     37582  "109"
     22915  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     13629  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1037  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     36936  "108"
     22942  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     12917  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1076  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     36721  "107"
     23215  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     12488  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1017  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     35180  "106"
     22595  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     11553  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1031  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     34941  "105"
     22873  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     11030  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1037  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     34310  "104"
     22761  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     10596  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       952  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     34264  "103"
     23050  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
     10223  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       990  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     33428  "102"
     22780  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      9638  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1009  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     33359  "101"
     23069  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      9216  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1073  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     32697  "100"
     22962  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      8757  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       977  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     32608  "99"
     23115  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      8511  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       981  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     32177  "98"
     23136  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      8059  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       981  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     31443  "97"
     23060  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      7473  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       909  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     31311  "96"
     22951  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      7329  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
      1030  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     30630  "95"
     22838  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      6866  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       925  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     30374  "93"
     23111  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      6336  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       926  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     30053  "94"
     22627  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      6520  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       905  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     29744  "92"
     22801  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      6056  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       886  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     29378  "91"
     22795  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      5666  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       916  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     29214  "90"
     22841  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      5425  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       947  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12

     29150  "89"
     22959  /Users/micro/Development/the_course/task-1/new/parsers.rb:23
      5290  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:39
       900  /Users/micro/Development/the_course/task-1/new/user_sessions.rb:35
         1  /Users/micro/Development/the_course/task-1/new/parsers.rb:12


Retained String Report
-----------------------------------
         1  "rbtree"
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/rubygems/specification.rb:1040

         1  "slicebefore_enumerable"
         1  /Users/micro/Development/the_course/task-1/new/stats.rb:32

         1  "slicebefore_sep_pred"
         1  /Users/micro/Development/the_course/task-1/new/stats.rb:32

         1  "value must respond to <=>"
         1  /Users/micro/.asdf/installs/ruby/2.6.1/lib/ruby/2.6.0/set.rb:725

after: 7994 MB
1248.6927570000407
Run options: --seed 20089

# Running:



Finished in 0.001331s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
micro@Micro ~/D/t/t/new>
```
