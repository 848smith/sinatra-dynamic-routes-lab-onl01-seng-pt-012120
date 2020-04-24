require_relative 'config/environment'
require 'pry'
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
    string = ""
    @number.times do 
      string += @phrase
    end
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
end