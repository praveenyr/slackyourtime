require 'sinatra'

post '/' do
  text = params.fetch('slacktrack').stripe

  case text
  when 'slacktrack'
    'GOTIT'
  end
end

run Sinatra::Application
