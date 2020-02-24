class DoctorsController < ApplicationController
  def new
  end

  def create
    render plain: params[:doctors].inspect
  end
end
