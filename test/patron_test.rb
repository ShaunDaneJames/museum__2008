require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test

  def test_it_exitsts_with_attributes
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Patron, patron_1
    assert_equal "Bob", patron_1.name
    assert_equal 20, patron_1.spending_money
  end

end
