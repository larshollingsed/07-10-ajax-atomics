require "sinatra"
require "pry"

get "/" do
  erb :"home"
end

get "/:msg" do
  message = params["msg"]
  if message.to_i != 0
    return "You wrote #{message}.  Is that how old you are?"
  elsif message == message.capitalize
    return "You wrote #{message}.  Is that someone's name?"
  else 
    return "You wrote #{message}.  Whateva'."
  end
end