require "bundler/setup"
require "minitest/unit"
require "flexmock/test_unit"

class FooTest < Test::Unit::TestCase
  def test_foo
    o = flexmock
    o.should_receive(:foo).times(1)
  end
end

class BarTest < MiniTest::Unit::TestCase
  include FlexMock::TestCase
  def test_foo
    o = flexmock
    o.should_receive(:foo).times(1)
  end
end

