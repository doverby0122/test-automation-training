#! /usr/bin/env ruby

require 'rest-client'
# should be able to use for anything
require_relative 'user'
# could run relative to another directory
# use when you create new classes yourself
require 'json'

access_token = ARGV[0]

user = User.new(access_token)

puts user.inspect
#puts user.first_name
#puts user.first_name = "Bob"
#puts user.last_name = "Ross"
puts user.full_name
#puts user.blah

#attempt to re-work this potentially another way
# set the variables alone and remove the class info
# separate the class creation from the above variables
# initialize the class as the different vals (first_name, last_name, email, access_token)
# idea is to have the class creation independent from the vst variables
# then also try to set the class into another file
#return new user object with first name, last name, email as it's instance variables
#figure out how to do puts user.first_name out by individually referencing them

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
#
# # api_key, access_token = ARGV
# #
# #when you close rubymine you'll lose the api key in the environment
# #access_token = '96fb7328e02f91abaa375acc8bdef426'
# #ref by index number
# #ARGV is prepopulated for you by the words you follow after the script
# # parse json rubydocs