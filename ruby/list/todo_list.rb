#  Class file
 class TodoList
    def initialize(items)
        @list = [items].flatten
    end
    def get_items
        @list.flatten
    end
    def add_item(item)
        @list.push(item) 
    end
    def delete_item(item)
        @list.delete(item)
        return @list
    end
    def get_item(index)
        @list.flatten[index]
    end
 end
