#! /usr/bin/env ruby

require 'rest-client'

#variables
dev_url   = 'https://api-dev.vitalsource.com'
endpt     = '/v4/users/'
api_key   = ENV['API_KEY']
acc_token = ARGV[0]
# api_key, access_token = ARGV
#
#when you close rubymine you'll lose the api key in the environment
#access_token = '96fb7328e02f91abaa375acc8bdef426'
#ref by index number
#ARGV is prepopulated for you by the words you follow after the script

#variables which contain variable
    url      = "#{dev_url}#{endpt}#{acc_token}"
    h1       = {'X-VitalSource-API-Key': api_key}

api_resp = RestClient.get url, h1

puts api_resp

#ref an enviro variable as #ENV['KEY'] and it gives you the value of the key-value pair

#look up symbols vs. strings and how they differ

#api_resp = RestClient.get"#{dev_url}#{endpt}#{token}", 'X-VitalSource-API-Key': api_key

#api_resp = RestClient.get"#{dev_url}#{endpt}#{acc_token}", h1

#read about
#strings. string interpolation. setting variables. passing variables to methods.


#puts api_resp
#
#
# can pass on the command line
# #p 228 enviro variables
# goes thru and tells you those things,
# accessing command line arguments on p 230
# after you type your script in on command line
# you can then type in other things
# that is captured in your scripts in secret constants (IN ALL CAPITAL LETTERS)
# command line arguments are all held in command line constants ARGV
# type in your script and paste the API key after it, it's held in the first position of 0
# in your script, this is where you will find that, as long you pass it in. if you don't find it
# it will be empty