require_relative './todo'

class TodoList
  def initialize
    @list = []
    # do stuff here
  end

  def add(title)
    @list << Todo.new(title)
  end

  def complete(index)
    # do stuff here
  end

  def to_s
    # do stuff here
  end

  def items
    [1]
  end

  def at(index)
    @list[index].title
  end
end
