require 'bundler/setup'
require 'sinatra'

tasks = []
(1..3).each { |i| tasks << "test task #{i}" }

get '/' do
    tasks.join ', '
end

post '/add' do
    unless params[:text].empty?
        tasks << params[:text]
        "Added: #{params[:text]}"
    end
end
