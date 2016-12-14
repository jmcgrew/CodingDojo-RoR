class SLLNode
	attr_accessor :value, :next
	def initialize val=nil
		@value = val
		@next = nil
	end

end

class SLL
	attr_accessor :head
	def initialize
		@head = nil
	end
	def insert val1, val2
		node = SLLNode.new(val1)
		current = @head
		while current
			if current.value == val2
				node.next = current.next
				current.next = node
				return
			end
			current = current.next
		end
	end
	def values
		arr = []
		current = @head
		while current
			arr.push(current.value)
			current = current.next
		end
		arr

	end


end
