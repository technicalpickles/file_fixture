require 'test/unit'
require 'file_fixture'

module Test # :nodoc: all
  module Unit 
    class TestCase
      include ::FileFixture
    end
  end
end