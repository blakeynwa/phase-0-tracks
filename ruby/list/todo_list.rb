#  Class file
 class TodoList
    def initialize(item1)
        @list = [item1]
    end
    def get_items
        @list.flatten
    end
    def add_item(item)
        @list.push(item) 
    end
    def delete_item(item)
        @list.delete_if{|item| item = "do the dishes"}
        p @list
        return @list
    end
    def get_item(index)
        @list.flatten[index]
    end
    # def retrieve_items(item)
    # end
 end
items = []
items = TodoList.new("mow lawn")
p items