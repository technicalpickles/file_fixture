# file\_fixture

## Installing

    gem install technicalpickles-file_fixture -s http://gems.github.com

## Usage

file\_fixture provide provides a convenience method for loading data from files. To use, you just add the snippet to your `test_helper.rb`:

    require 'file_fixture/test_unit'
    FileFixture::FIXTURE_DIR = File.join(File.dirname(__FILE__), "file_fixtures")

Place files into the `file_fixtures` directory, and then you can use `file_fixture 'foo'` to read and return `file_fixtures/foo`.

If you were building wrappers around web APIs, you should use static data instead of hitting the API directly. We can use file_fixture to implement this helper method:

    def stubbing_http_response_with_fixture(file)
      response = stub(:body => file_fixture(file), :value => nil)
      Net::HTTP.any_instance.stubs(:request).returns(response)

      yield
    end

You could then use this in tests like:

    stubbing_http_response_with_fixture('get_tags.xml') do
      assert_equal 6, @user.tags.size # @user.tags does a HTTP request
    end

## License

See LICENSE