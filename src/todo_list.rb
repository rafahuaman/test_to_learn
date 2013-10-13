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
    full_list = ""
    @list.each do |todo|
      full_list << todo.title
      full_list << "\n"
    end
    full_list
  end

  def items
    @list
  end

  def at(index)
    @list[index].title
  end
end
