require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    counter = 0
    while counter > @number
      puts "#{@phrase}"
      counter += 1
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
  end
end