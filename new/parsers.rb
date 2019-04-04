# frozen_string_literal: true

# Example of the session:
#
# "session,0,0,Safari 29,87,2016-10-23"
module Parsers
  SEPARATOR = ",".freeze

  module_function

  def parse_user(user_string)
    fields = user_string.split(SEPARATOR)

    {
      id: fields[1].to_i,
      first_name: fields[2],
      last_name: fields[3],
      age: fields[4].to_i,
    }
  end

  def parse_session(session_string)
    fields = session_string.split(SEPARATOR)

    {
      user_id: fields[1].to_i,
      session_id: fields[2].to_i,
      browser: fields[3],
      time: fields[4].to_i,
      date: fields[5].rstrip! || fields[5],
    }
  end
end
