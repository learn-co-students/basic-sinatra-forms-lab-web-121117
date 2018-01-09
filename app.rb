require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    puts params
    erb :newteam
  end
  get '/team' do

    erb :team
  end
  post '/team' do
    # {"name"=>"bird", "coach"=>"bird", "pg"=>"bird", "sg"=>"bird", "pf"=>"bird", "sf"=>"bird", "c"=>"bird"}
    @team_name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @pf = params["pf"]
    @sf = params["sf"]
    @c = params["c"]
    erb :team
  end

end
