class Location
  EARTH_RADIUS = 6371.freeze
  DEGREES_IN_RADIANS = 180.freeze

  attr_accessor :latitude, :longitude

  def distance_from(other)
    # Calculate radial arcs for latitude and longitude
    dLat = (latitude - other.latitude) * Math::PI / DEGREES_IN_RADIANS
    dLon = (longitude - other.longitude) * Math::PI / DEGREES_IN_RADIANS

    a = Math.sin(dLat / 2) *
        Math.sin(dLat / 2) +
        Math.cos(latitude * Math::PI / DEGREES_IN_RADIANS) *
        Math.cos(other.latitude * Math::PI / DEGREES_IN_RADIANS) *
        Math.sin(dLon / 2) * Math.sin(dLon / 2)

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))

    EARTH_RADIUS * c
  end
end
