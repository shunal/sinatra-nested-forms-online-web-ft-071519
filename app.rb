require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do 
      erb :root
    end 
    
    get "/new" do 
      erb :'pirates/new'
    end 
    
    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])
 
  params[:pirate][:ship].each do |details|
    Course.new(details)
  end
 
  @courses = Course.all
 
  erb :student
    end 
    

  end
end
