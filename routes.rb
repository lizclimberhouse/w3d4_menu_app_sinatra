class Menu_Items < Sinatra::Base
  get "/" do
    erb :home
  end

  get "/menu/new" do
    erb :new
  end

  post "/menu" do

  end
  #
end
