require 'rocketchat'
require 'byebug'

# require 'net/http'
# require 'uri'
#
# def fetch(uri_str, limit = 10)
#   # You should choose better exception.
#   raise ArgumentError, 'HTTP redirect too deep' if limit == 0
# byebug
#   url = URI.parse(uri_str)
#   req = Net::HTTP::Get.new(url.path, { 'User-Agent' => 'Mozilla/5.0 (etc...)' })
#   response = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
#   case response
#   when Net::HTTPSuccess     then response
#   when Net::HTTPRedirection then fetch(response['location'], limit - 1)
#   when Net::HTTPFound then fetch(response['location'], limit - 1)
#   else
#     response.error!
#   end
# end
#
# print fetch('http://open.rocket.chat/')
#print fetch('http://www.ruby-lang.org/')
# byebug
rocket_server = RocketChat::Server.new('https://open.rocket.chat:443')
# info = rocket_server.info
# puts "Rocket.Chat version: #{info.version}"



session = rocket_server.login('inrika', 'SYjK3DtyskcA5Wz')

session.chat.post_message(channel: '@chaetal', text: 'Hello from ruby')

session.logout
#
