require 'sinatra'
require_relative "coin.rb"

get '/' do 
	erb :index #homepage
end

post '/index' do 
	amount = params[:amount]
	coins = params[:coins]
	coins = coin_changers(amount)
	redirect '/results?amount=' + amount + '&coins=' + coins
end


get '/results' do 
	amount = params[:amount]
	coins = params[:coins]
	erb :results, :locals => {:amount =>amount, :coins =>coins}
end