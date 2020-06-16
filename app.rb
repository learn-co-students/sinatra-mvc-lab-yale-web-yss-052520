require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do 
        erb :user_input
    end 

    post '/piglatinize' do 
        @piglatin_object = PigLatinizer.new 
        @piglatin_words = @piglatin_object.piglatinize(params[:user_phrase])
        erb :display_piglatin
    end 
end