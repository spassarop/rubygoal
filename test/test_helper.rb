require 'minitest/autorun'
require "minitest/reporters"

require 'rubygoal/game'
require 'fixtures/test_home_coach_definition'
require 'fixtures/test_away_coach_definition'

# Ensure backward compatibility with Minitest 4
Minitest::Test = MiniTest::Unit::TestCase unless defined?(Minitest::Test)
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

module Rubygoal
  class Coordinate
    # Needed to use assert_in_delta with Coordinate instances
    alias_method :-, :distance
  end
end

Rubygoal.configure do |config|
  config.debug_output = false
end
