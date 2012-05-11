class ListController < Kondi::TableViewController

  # required
  def size
    TodoItem.count
  end

  # required method for constructing the cells in the table
  def cell_for(index_path)
    cell = ListCell.new(self)
    cell.todo_item = TodoItem.all[index_path.row]
    cell
  end

end
