require 'sinatra'

set :port, 9494

get '/' do
  haml :index, :locals => {:num_loaders => 3}
end