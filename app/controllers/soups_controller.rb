class SoupsController < ApplicationController
  before_action :fetch_soup, only: [:show, :update, :edit, :destroy, :toggle_featured]

  def index
    @soups = Soup.all

    respond_to do |format|
      format.json {render json: @soups}
    end
  end

  def show

    respond_to do |format|
      format.html
      format.json { render json: @soup}
    end
  end

  #do
  def new
  end

  #do
  def update
  end

  #do
  def edit
  end

  #do
  def destroy
  end

  def toggle_featured
    @soup.toggle!(:featured)
    redirect_to @soup
  end


  private

  def fetch_soup
    @soup = Soup.find(params[:id])
  end
end
