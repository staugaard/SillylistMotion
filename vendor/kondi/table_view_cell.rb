require 'kondi/callbacks'

module Kondi
  class TableViewCell < UITableViewCell
    include Callbacks

    ACCESSORY = {
      :none      => UITableViewCellAccessoryNone,
      :checkmark => UITableViewCellAccessoryCheckmark
    }

    def label
      textLabel
    end

    def accessory=(accessory_name)
       self.accessoryType = ACCESSORY[accessory_name] || UITableViewCellAccessoryNone
    end

    def self.new(table_view_controller)
      table_view_controller.recycle_cell(self) || alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:identifier)
    end

    def self.identifier
      name
    end

  end
end
