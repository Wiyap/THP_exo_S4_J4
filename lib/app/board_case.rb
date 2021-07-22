class CaseBoard
  attr_accessor :position, :state

  def initialize (position)
    @position = position
    @state = "  "
  end
end