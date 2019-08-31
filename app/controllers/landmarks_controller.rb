class LandmarksController < ApplicationController
  # add controller methods

  #index
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  #new
  get '/landmarks/new' do
    @landmarks = Landmark.all
    erb :'/landmarks/new'
  end

  #show
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end 



end
