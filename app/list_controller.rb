class ListController < Kondi::TableViewController
  # required
  def size
    TodoItem.count
  end

  # required method for constructing the cells in the table
  def cell_for(index_path)
    ListCell.create(self).tap do |cell|
      cell.todo_item = TodoItem.all[index_path.row]
    end
  end

  # optional method called when a cell is selected
  def selected(index_path)
    cell_at(index_path).toggle
  end
end
