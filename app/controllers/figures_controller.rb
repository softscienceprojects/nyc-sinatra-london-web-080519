require "pry"

class FiguresController < ApplicationController
  # add controller methods

  #Index
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  #form to create a new figure
  #New
    #with figure and title
  get '/figures/new' do
    @figures = Figure.all
    erb :'figures/new'
  end

  #Show
  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  #create
  post '/figures' do
    @figure = Figure.create(name: params[:figure]["name"])
  
      if params["title"]["name"].empty?
        @figure.titles << Title.create(name: params["title"]["name"])
      end
      if params["landmark"]["name"].empty?
        @figure.landmarks << Landmark.create(name: params["landmark"]["name"], year_completed: ["landmark"]["year_completed"])
      end
    @figure.save
    redirect "/figures/#{@figure.id}"
  end

  #edit
  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :'figures/edit'
  end




end
