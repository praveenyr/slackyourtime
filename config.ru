require 'sinatra'
require 'envyable'
Envyable.load('.config/env.yml','development')

InvalidTokenError = Class.new(Exception)

post '/' do
  puts params

  raise(InvalidTokenError) unless params[:token] == ENV['SLACK_TOKEN']
  # text = params.fetch('command').strip
  #
  # case text
  # when '/slacktrack'
  #   'GOTIT'
  # end
  "Hello Praveen!"
end

run Sinatra::Application
