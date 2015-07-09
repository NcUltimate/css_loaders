require 'sinatra'

set :port, 9494

loaders = ['07-05: Corners', '07-06: Portal', '07-07: Pulse']
loaders += ['07-08: Clock', '07-09: Splash', '07-10: Paddle']
get '/' do
  haml :index, :locals => {:num_loaders => loaders.count, 
                          :loaders => loaders}
end