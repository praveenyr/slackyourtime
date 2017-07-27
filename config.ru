require 'sinatra'

post '/' do
  text = params.fetch('command').strip

  case text
  when '/slacktrack'
    'GOTIT'
  end
end

run Sinatra::Application
