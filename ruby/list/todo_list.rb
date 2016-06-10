class TodoList
	
	def initialize (todoArray)
		@TodoList = todoArray
	end

	def get_items
		@TodoList
	end

	def add_item(item)
		@TodoList << item
	end

	def delete_item(del_item)
		@TodoList.delete(del_item)
	end

	def get_item(item_index)
		@TodoList[item_index]
	end


end 