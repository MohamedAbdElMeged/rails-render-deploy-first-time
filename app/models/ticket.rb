class Ticket < ApplicationRecord
  has_one :excavator, dependent: :destroy

  def get_polygon_points
    wkt = well_known_text
    wkt.slice! 'POLYGON (('
    wkt.slice! '))'
    points = wkt.split(',')
    # points.each_with_index do |point, index|
    #   points[index] = point.split(' ')
    # end
    points.join(' , ')
  end
end
