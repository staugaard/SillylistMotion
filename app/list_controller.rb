class ListController < Kondi::TableViewController
  def size
    TodoItem.count
  end

  def selected(index_path)
    cell_at(index_path).toggle
  end

  def cell_for(index_path)
    Cell.create(self).tap do |cell|
      cell.todo_item = TodoItem.all[index_path.row]
    end
  end

  class Cell < Kondi::TableViewCell
    attr_accessor :todo_item

    def todo_item=(item)
      @todo_item = item
      update
    end

    def update
      self.label.text = todo_item.title
      self.accessory  = todo_item.done ? :checkmark : nil
    end

    def toggle
      todo_item.done = !todo_item.done
      update
    end

  end
end
