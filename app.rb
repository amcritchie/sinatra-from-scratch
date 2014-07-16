require "sinatra"
require "gschool_database_connection"
require "active_record"
require "rack-flash"


class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  def initialize
    super
    @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])

  end

  get "/" do
    @order_user_string = "SELECT username,id FROM users"
    if session[:user_id]
      puts "We still have a session id #{session[:id]}"
    end
    erb :root, :locals => {:send => @order_user_string}
  end



  post "/new_email" do
    p params[:email]
    @database_connection.sql("INSERT INTO emails (email) VALUES ('#{params[:email]}')")
    redirect "/"
  end


end #end of class
