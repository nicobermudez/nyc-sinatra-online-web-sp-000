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
  end

  post '/figures' do
    Figure.create(name: params['figure']['name'], year_completed: params['landmark']['year_completed'])
    redirect '/landmarks'
  end





end
