require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/team" do
      @team= Team.new(params[:team])

      params[:team][:superhero].each do |superhero|
        Superhero.new(superhero)
      end
      @superhero =Superhero.all
      erb :team
    end



end
