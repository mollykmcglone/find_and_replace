require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/response') do
  @word1 = params.fetch('word1')
  @word2 = params.fetch('word2')
  @answer = params.fetch('sentence').find_and_replace(@word1, @word2)
  erb(:response)
end
