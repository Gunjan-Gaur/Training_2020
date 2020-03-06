module DoctorsHelper
  def sortable(column)
    # title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to column, :sort => column, :direction => direction
  end
end
