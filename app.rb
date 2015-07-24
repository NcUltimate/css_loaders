require 'sinatra'
require 'sinatra/base'
require 'json'

class LoadingCSS < Sinatra::Base

  loaders = JSON.parse(open('loaders.json', &:read))
  set :port, 9494

  get '/' do
    demo_sizes = %w(small normal large)
    haml :index, :locals => {:num_loaders => loaders.count, 
                            :loaders => loaders['loaders'],
                            :sizes => demo_sizes}
  end
end