require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @answer = params[:number].to_i * params[:number].to_i
    "#{@answer}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = params[:word1]
    binding.pry
    "#{@string}"
  end

end
