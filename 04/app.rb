require "sinatra"
require "pry"

get "/" do
  erb :"home"
end

get "/:msg" do
  message = params["msg"]
  if message.to_i != 0
    @response_message = "You wrote #{message}.  Is that how old you are?"
  elsif message == message.capitalize
    @response_message = "You wrote #{message}.  Is that someone's name?"
  else 
    @response_message = "You wrote #{message}.  Whateva'."
  end
  erb :"message"
end