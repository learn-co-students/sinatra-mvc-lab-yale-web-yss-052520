require_relative 'config/environment'

class App < Sinatra::Base
    
    set :views, "views"

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        @prompt = PigLatinizer.new
        @latinized = @prompt.piglatinize(params[:user_phrase])
       
        erb :new 
    end

    

end