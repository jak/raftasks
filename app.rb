require 'bundler/setup'
require 'sinatra'

tasks = []
(1..3).each { |i| tasks << "test task #{i}" }

get '/' do
  @tasks = tasks
  erb :index
end

post '/add' do
    unless params[:text].empty?
        tasks << params[:text]
        #"Added: #{params[:text]}"
        redirect to('/')
    end
end

post '/about' do
	"This project has been made by Jak Spalding & Rafael Ruiz Morales"
end
