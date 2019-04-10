class School
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
end

