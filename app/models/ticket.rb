class Ticket < ApplicationRecord
  has_one :excavator, dependent: :destroy

  validates_presence_of :request_number
  validates_presence_of :sequence_number
  validates_presence_of :request_action
  validates_presence_of :request_type


  def get_polygon_points
    wkt = well_known_text
    wkt.slice! 'POLYGON (('
    wkt.slice! '))'
    points = wkt.split(',')
    points.each_with_index do |point, index|
      points[index] = point.split(' ').map(&:to_f)
    end
    points
  end
end
