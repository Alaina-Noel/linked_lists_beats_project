require './lib/node'

RSpec.describe Node do
  before(:each) do
    @node = Node.new("this is the data")
  end

  describe 'existance & attributes' do
    it 'exists' do
      expect(@node).to be_instance_of(Node)
      expect(@node.data).to eq("this is the data")
      expect(@node.next_node).to be(nil)
    end
  end

end