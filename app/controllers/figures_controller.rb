class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figures = Figure.find(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figures = Figure.find(params[:id])
    erb :'figures/edit'
  end

  post '/figures/:id' do
    @figure = Figure.find(params[:id])
    @landmark.name = params['landmark']['name']
    @landmark.year_completed = params['landmark']["year_completed"]
    @landmark.save

    redirect to "/landmarks/#{@landmark.id}"
  end

  post '/figures' do
    Figure.create(name: params['figure']['name'])
    redirect '/figures'
  end





end
