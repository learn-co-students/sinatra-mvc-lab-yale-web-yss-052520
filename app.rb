require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/' do 
    erb :user_input 
    end 

    post '/piglatinize' do 
        answer = PigLatinizer.new 
        @answerway = answer.piglatinize(params[:user_phrase])
        erb :esultray
    end 

end