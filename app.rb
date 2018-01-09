require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
    # <h2><%= "Team Name: #{@name}" %></h2>
    # <p><%= "Coach: #{@coach}" %></p>
    # <p><%= "Point Guard: #{@pg}" %></p>
    # <p><%= "Shooting Guard: #{@sg}" %></p>
    # <p><%= "Small Forward: #{@sf}" %></p>
    # <p><%= "Power Forward: #{@pf}" %></p>
    # <p><%= "Center: #{@c}" %></p>
  end

end
