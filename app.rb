require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @translated = PigLatinizer.do(params["user_phrase"])

        erb :piglatinizer
    end
end