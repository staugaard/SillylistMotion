class ListController < Kondi::TableViewController
  def size
    TodoItem.count
  end

  def cell_for(index_path)
    ListCell.create(self).tap do |cell|
      cell.todo_item = TodoItem.all[index_path.row]
    end
  end

  def selected(index_path)
    cell_at(index_path).toggle
  end
end
