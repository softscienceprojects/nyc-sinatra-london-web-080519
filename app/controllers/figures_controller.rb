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

  post '/figures' do
    @figure = Figure.create(params[:figure])
      @figure.titles << Title.create(name: params["title"]["name"])
  

    redirect '/figures/#{@figure.id}'
  end

  #Show
  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end


end
