require 'sinatra'
require 'envyable'
require 'slack-ruby-client'
Envyable.load('./config/env.yml', 'development')

# Slack.configure do |config|
#   config.token = ENV['SLACK_TOKEN']
# end

InvalidTokenError = Class.new(Exception)

post '/' do

  raise(InvalidTokenError) unless params[:token] == ENV['SLACK_TOKEN']

 # client = Slack::Web::Client.new
 # puts client.auth_test

  "Hello Praveen!"
end

run Sinatra::Application
