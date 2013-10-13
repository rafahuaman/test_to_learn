class Todo
  def initialize(title)
    if title.empty?
    	raise "title can't be empty"
    end
    @title = title
  end

  def title
    @title
  end
end
