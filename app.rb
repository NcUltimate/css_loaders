require 'sinatra'

set :port, 9494

loaders = ['07-05: Corners', '07-06: Portal', '07-07: Pulse']
get '/' do
  haml :index, :locals => {:num_loaders => 3, :loaders => loaders}
end