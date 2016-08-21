class TodoList
	
	attr_reader :things_todo

	def initialize(ary)
		@things_todo = ary
	end

	def get_items
		@things_todo
	end

	def add_item(item)
		@things_todo << item
	end

	def delete_item(item)
		@things_todo.delete(item)
	end

	def get_item(int)
		@things_todo[int]
	end

end
