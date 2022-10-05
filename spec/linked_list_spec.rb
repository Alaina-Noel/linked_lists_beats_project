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

end