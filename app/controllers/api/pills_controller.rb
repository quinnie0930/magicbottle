class Api::PillsController < ApplicationController
  def index
    render json: Pill.all
  end
end