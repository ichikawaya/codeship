require 'net/http'
require 'uri'
require 'json'
#require './vaddy_libs.rb'

vaddy_user  = ARGV[1] != nil ? ARGV[1] : ENV["VADDY_USER"];
vaddy_host  = ARGV[2] != nil ? ARGV[2] : ENV["VADDY_HOST"];
vaddy_token = nil;

if( vaddy_token == nil || vaddy_user == nil || vaddy_host == nil) then
    puts "ERROR: need more argument or env."
    puts "USAGE: ruby vaddy.rb auth_key username host"
    puts "or set env VADDY_TOKEN, VADDY_USER and VADDY_HOST"
    exit(1)
end


# start scan
puts "== Start =="

