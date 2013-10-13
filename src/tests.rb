require_relative './todo_list'

# when i create a Todo , the title gets assigned
todo1 = Todo.new("get milk")

if todo1.title == "get milk"
	puts "title was assigned"
else
	puts "title wasn't assigned - #{todo1.title}"
end


