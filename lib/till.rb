require 'json'
class Till

  attr_reader :items, :total

  def initialize
    @items = []
    @price = load_items_list
  end

  def load_items_list
    file = File.read('hipstercoffee.json')
    hash = JSON.parse(file).first
    hash['prices'].first
  end

  def price(item)
    load_items_list[item]
  end


end