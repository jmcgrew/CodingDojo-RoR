require_relative 'sll'

RSpec.describe SLLNode do
  it 'needs to have two attrs, value and next' do
    sllnode1 = SLLNode.new
    expect(sllnode1).to be_an_instance_of(SLLNode)
    expect(sllnode1.next).to be(nil)
    expect(sllnode1.value).to be(nil)
  end
end

RSpec.describe SLL do
  before do
    @sll = SLL.new
  end
  it 'needs to have a head attr' do
    expect(@sll.head).to be(nil)
  end
  it 'should have a method called insert which takes in a value you wish to add to the SLL and a value you wish to add that Node after; def insert(val, previousVal)' do
    n1 = SLLNode.new(1)
    n2 = SLLNode.new(2)
    n3 = SLLNode.new(3)
    @sll.head = n1
    n1.next = n2
    n2.next = n3
    @sll.insert(100,2)
    expect(@sll.values).to eq([1,2,100,3])
  end

end
