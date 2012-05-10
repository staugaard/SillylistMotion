class ListCell < Kondi::TableViewCell
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
    todo_item.toggle
    update
  end
end
