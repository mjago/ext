require 'minitest/autorun'
require 'minitest/pride'
#require_relative './my_test.rb'
require_relative 'my_test'

class TestMyTest < MiniTest::Test

  def setup
  end

  def teardown
  end

  def test_true
    assert true
  end

  def test_mytest
    t = MyTest.new
    assert_equal(Object, MyTest.superclass)
    assert_equal(MyTest, t.class)
    t.add(1)
    t.add(2)
    assert_equal([1,2], t.instance_eval("@arr"))
  end
end
