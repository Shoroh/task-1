#!/bin/bash

docker run -it -v $(pwd)/../../:/tmp microgenius/ruby-valgrind valgrind --tool=massif ruby new/run.rb
