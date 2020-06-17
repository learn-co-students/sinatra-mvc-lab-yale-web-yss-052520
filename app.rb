require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        # binding.pry 
        string = params[:user_phrase]
        pig_instance = PigLatinizer.new
        @new_string = pig_instance.piglatinize(string)
        erb :final
    end

end