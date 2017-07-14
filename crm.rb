require 'sinatra'
require 'pry'
require_relative 'contact'

get '/' do
  redirect to('/contact')
end

get '/contact' do
  erb :index
end
