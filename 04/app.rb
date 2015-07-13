require "sinatra"
require "pry"

get "/" do
  erb :"home"
end

get "/:msg" do
  @message = params["msg"]
  erb :"message"
end