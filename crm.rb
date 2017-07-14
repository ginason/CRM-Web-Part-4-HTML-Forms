require 'sinatra'
require 'pry'
require_relative 'contact'

get '/' do
  redirect to('/contact')
end

get '/contact' do
  erb :index
end

get '/contact/new' do

end

get 'contact/:id' do

end

get '/contacts/:id/edit' do

  @contact = contact.find_by(id: params[:id].to_i)
    if @contact
    erb :edit_contact
    else
    raise Sinatra::NotFound
    end
end

post '/contact' do
  Contact.create(
  first_name: params[:first_name],
  last_name:  params[:last_name],
  email:      params[:email],
  note:       params[:note]
  )
  redirect to('/contact')
end
