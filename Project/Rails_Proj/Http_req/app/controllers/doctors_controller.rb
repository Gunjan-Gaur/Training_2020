class DoctorsController < ApplicationController
  def index
    @search_term = 'Nobita'
    @doc = Doctor.for(@search_term)

  end
end
