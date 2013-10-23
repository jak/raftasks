require 'bundler/setup'
require 'sinatra'

get '/' do
    tasks = []
    (1..3).each { |i| tasks << "test task #{i}" }

    tasks.join ', '
end