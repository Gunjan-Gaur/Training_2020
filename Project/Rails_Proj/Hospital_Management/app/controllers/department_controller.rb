class DepartmentController < ApplicationController
  def patient
    @patient = Patient.all
  end

end
