require "test/unit"
require_relative "my_class"
require 'stringio'
class TestSimpleNumber < Test::Unit::TestCase
  def setup
    p "Start testing..."
    @a = MyClass.new
  end
  def teardown
    p "End of test!"
  end
  def test_hello
    $output = StringIO.new
    MyClass.new.hello
    assert_match(/hello/, $output.string)
  end
end
