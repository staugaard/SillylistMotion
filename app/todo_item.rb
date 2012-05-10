class TodoItem

  attr_accessor :title, :done

  def initialize(options = {})
    @title = options[:title]
    @done  = !!options[:done]
  end

  def self.count
    all.size
  end

  def self.all
    @items ||= [].tap do |items|
      items << TodoItem.new(:title => "Foo", :done => false)
      items << TodoItem.new(:title => "Bar", :done => true)
    end
  end
end
