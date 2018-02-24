class Menu_Items < Sinatra::Base
  get "/main" do
    erb :home
  end

  get "/menu/new" do
    erb :new
  end

  post "/menu" do # TODO
    Item.create(name: params[:name], description: params[:description])
    redirect "/"
  end

  get "/menu" do
    @menu_add = Item.all
    erb :full_menu
  end

  get "/menu/:id/edit" do
    @menu_edit = Item.find(params[:id])
    erb :edit
  end

  put "/menu/:id" do
    menu1 = Item.find(params[:id])
    menu1.update(name: params[:name], description: params[:description])
    redirect "/menu"
  end

  delete "/menu/:id" do
    Item.find(params[:id]).destroy
    redirect "/menu"
  end

  # gotta find a way to do this without the erb
  get "/" do
    @menu_add = Item.all
    erb :main
  end
  #
end
