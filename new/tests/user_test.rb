# frozen_string_literal: true

require "benchmark/ips"
require_relative "./base"
require_relative "../user"

USER_STRING_EXAMPLE = "user,0,Alexandr,Shelestov,0".freeze

describe "User" do
  before do
    @user = User.new(USER_STRING_EXAMPLE)
  end

  describe "#key" do
    it "returns a new string with first_name and last_name" do
      assert_equal "Alexandr Shelestov", user.key
    end
  end

  private

  attr_reader :user
end
