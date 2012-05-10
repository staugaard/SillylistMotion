module Kondi
  class TableViewController < UITableViewController
    def tableView(tableView, numberOfRowsInSection:section)
      size
    end

    def tableView(tableView, cellForRowAtIndexPath:indexPath)
      cell_for(indexPath)
    end

    def tableView(tableView, didSelectRowAtIndexPath:indexPath)
      selected(indexPath)
    end

    def recycle_cell(id_or_class)
      id = id_or_class.respond_to?(:identifier) ? id_or_class.identifier : id_or_class
      tableView.dequeueReusableCellWithIdentifier(id)
    end

    def cell_at(index_path)
      tableView.cellForRowAtIndexPath(index_path)
    end

    def self.create
      instance = alloc.initWithStyle(UITableViewStylePlain)
      instance.wantsFullScreenLayout = true
      instance
    end
  end
end
