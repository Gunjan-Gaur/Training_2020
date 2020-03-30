class DoctorsController < ApplicationController
  def index
    # @search_term = 'Nobita'
    @doc = Doctor.all
  end
end
