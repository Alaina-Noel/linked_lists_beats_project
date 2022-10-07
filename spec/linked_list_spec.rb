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
      @list.append("doop")
      @list.append("BEEP")
      @list.append("BEEP BEEP")

      expect(@list.count).to eq(3)
    end
  end

  describe '#to_string' do
    it 'can generate a string of all element in the list separated by a space' do
      @list.append("doop")
      @list.append("RAT")
      @list.append("BEEP BEEP")

      expect(@list.to_string).to eq("doop RAT BEEP BEEP")
    end
  end

  describe 'integration of methods' do
    it 'can change the head and change the node of that head' do
      expect(@list.head).to be(nil)
      @list.append("doop")
      expect(@list.head.next_node).to be(nil)
      @list.append("RAT")
      expect(@list.head.next_node.data).to eq("RAT")
      expect(@list.count).to eq(2)
      expect(@list.to_string).to eq("doop RAT")
    end
  end

  describe '#prepend' do
    it 'can add an element to the beginning of the list' do
      expect(@list.head).to be(nil)
      @list.append("Noel")
      expect(@list.to_string).to eq("Noel")
      @list.append("Kneiling")
      @list.prepend("Alaina")
      expect(@list.to_string).to eq("Alaina Noel Kneiling")
      expect(@list.count).to eq(3)
    end
  end

  describe '#insert(position, value)' do
    xit 'can insert an element at a given node position of the list' do
      expect(@list.head).to be(nil)
      @list.append("plop")
      expect(@list.to_string).to eq("plop")
      @list.append("suu")
      @list.prepend("dop")
      expect(@list.to_string).to eq("dop plop suu")
      expect(@list.count).to eq(3)
      @list.insert(1, "woo")
      expect(@list.to_string).to eq("dop woo plop suu")
    end
  end

  

end