class Venue
  attr_reader :name,
  :capacity,
  :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end
  def add_patron(patron)
    @patrons << patron
  end
  def yell_at_patrons
    patrons.map(&:upcase)
    # patrons.each do |patron|
    #   return @patrons.upcase
  end
  def over_capacity?
    @patrons.count > @capacity
  end
  def kick_out
    @patrons.max(@capacity)
    # if @patrons > @capacity
    #   return @patrons.drop
  end
end

#rspec lib/venue.rb