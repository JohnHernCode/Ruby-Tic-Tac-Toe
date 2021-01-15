class Player
  attr_accessor :name
  attr_reader :tag

  def initialize(tag)
    @name = ''
    @tag = tag
  end
end
