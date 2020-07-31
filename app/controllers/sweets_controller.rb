class SweetsController < ApplicationController
  before_action :set_sweet, only: [:show] 
  def index
    @sweets = Sweet.all
  end

  def show 
  end 

  private 

  def set_sweet 
    @sweet = Sweet.find(params[:id])
  end 

end
