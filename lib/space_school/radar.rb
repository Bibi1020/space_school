module Radar

  def verfication(matrix)
    array = []
    position = 1
    @matrix.each_index do |i| 
      array << matrix[0][position]
      position += 1
    end
    array 
  end

end