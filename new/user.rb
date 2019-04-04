# frozen_string_literal: true

require_relative "./parsers"
require_relative "./user_sessions"

class User
  def initialize(user_string)
    @user = Parsers.parse_user(user_string)
  end

  def key
    "#{user[:first_name]} #{user[:last_name]}"
  end

  private

  attr_reader :user
end
