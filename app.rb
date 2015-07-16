require 'sinatra'
require 'JSON'

set :port, 9494

loaders = JSON.parse(open('loaders.json', &:read))
get '/' do
  demo_sizes = %w(small normal large)
  haml :index, :locals => {:num_loaders => loaders.count, 
                          :loaders => loaders['loaders'],
                          :sizes => demo_sizes}
end