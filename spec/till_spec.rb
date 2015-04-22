require 'till'
require 'json'
require 'transaction'

describe Till do

  it 'can add an item to the transaction' do
    till = Till.new
    transaction = Transaction.new
    subject.add(:Tea)
    expect(subject.items).to eq [:Tea]
  end

  it 'can return price for an item' do
    till = Till.new
    expect(till.price("Blueberry Muffin")).to eq(4.05)
  end
end


 # p till.load_items_list.first["Affogato"]