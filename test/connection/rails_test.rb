# require File.expand_path(File.dirname(__FILE__) + '/../test_helper')
# 
# class ConnectionRailsTest < Test::Unit::TestCase
#   include Steam
# 
#   def test_rails
#     rails_root = File.expand_path(File.dirname(__FILE__) + '/../fixtures/rails')
#     require rails_root + '/config/environment.rb'
# 
#     url = 'http://localhost:3000/users'
#     connection = Connection::Rails.new
# 
#     status, headers, response = connection.call(Request.new(:url => url).env)
#     # assert !response.body.empty?
#   end
# end