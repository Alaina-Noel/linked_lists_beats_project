require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  describe 'existance & attributes' do
    it 'exists' do
      expect(@list).to be_instance_of(LinkedList)
      expect(@list.head).to be(nil)
    end
  end

  describe '#append(string)' do
    it 'can append something to the a list' do
      expect(@list.node.data).to be(nil)
      @list.append("doop")
      expect(@list.head.next_node).to be(nil)
      expect(@list.count).to eq(1)
      expect(@list.to_string).to eq("doop")
    end
  end

end