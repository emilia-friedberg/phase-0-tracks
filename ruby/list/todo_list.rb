class TodoList
  attr_accessor :list

  def initialize(items)
    @list = []
    @list += items
  end

  def get_items
    @list
  end

  def add_item(new_item)
    @list << (new_item)
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(index)
    @list[index]
  end
end