class Apple_Tree
  attr_reader :height, :age, :apple_count
  def initialize
    @height = 0
    @age = 0
    @apple_count = 0
  end
  def year_gone_by
    @age += 1
    @height += 2
    if (@age > 3) && (@age < 11)
      @apple_count += 10
    end
  end
  def pick_apples
    @apple_count = 0
  end
end
