require('sinatra')
require('sinatra/reloader')
require('./lib/clock_angle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/angle') do
  @time = params.fetch('time')
  @angle = params.fetch('time').clock_angle()
  erb(:angle)
end
