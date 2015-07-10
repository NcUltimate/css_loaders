require 'sinatra'
require 'JSON'

set :port, 9494

loaders = JSON.parse(open('loaders.json', &:read))
get '/' do
  haml :index, :locals => {:num_loaders => loaders.count, 
                          :loaders => loaders['loaders']}
end