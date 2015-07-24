require 'sinatra'
require 'sinatra/base'
require 'json'

class LoadingCSS < Sinatra::Base

  loaders = JSON.parse(open('loaders.json', &:read))
  set :port, 9494

  get '/' do
    demo_classes = %w(ld-portal ld-atom ld-clock)
    demo_sizes = %w(small normal large)
    
    locals = {
      :loaders => loaders['loaders'],
      :demos => demo_classes.zip(demo_sizes)
    }
    haml :index, :locals => locals
  end
end