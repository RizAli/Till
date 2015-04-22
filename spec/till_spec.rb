require 'till'
require 'json'
require 'transaction'

describe Till do

  it 'can return price for an item' do
    till = Till.new
    expect(till.price("Blueberry Muffin")).to eq(4.05)
  end

  it 'can add an item to the list' do
    till = Till.new
    transaction = Transaction.new
    subject.add(:Affogato)
    expect(subject.items).to eq [:Affogato]
  end

  xit 'only adds if the item is in the coffee shop' do
    till = Till.new
    subject.a
  end

end


 # p till.load_items_list.first["Affogato"]