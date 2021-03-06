require_relative './todo_list'

puts "TEST: when i create a Todo , the title gets assigned"
todo1 = Todo.new("get milk")

if todo1.title == "get milk"
	puts "PASS: title was assigned"
else
	puts "FAIL: title wasn't assigned - #{todo1.title}"
end


puts "TEST: a todo should complain for an empty title"
begin
  todo2 = Todo.new("")	
rescue
	puts "PASS: error was raised"
else
	puts "FAIL: error wasn't raised"
end


puts "TEST: when I add an item to my list, it shows up"

list1 = TodoList.new
list1.add("get bread")
if list1.items.length == 1 
	puts "PASS: has one item"
else 
	puts "Fail: not one item"
end

list1.add("get eggs")
if list1.items.length == 2
	puts "PASS: has two items"
else 
	puts "Fail: does not two items"
end

if list1.at(0) == "get bread"
	puts "PASS: gave back the title"
else
	puts "FAIL: didn't give back title"
end

puts "TEST: a TodoList should complain for an empty title"
begin
	list1.add("")
rescue
	puts "PASS: error was raised"
else
	puts "FAIL: error wasn't raised"
end

puts "TEST: to_s should print all todo items"
if list1.to_s ==  "get bread\nget eggs\n"
	puts "PASS: returns string of complete list"
else 
	puts "Fail: does return string of full list - \n#{list1.to_s}"
end

