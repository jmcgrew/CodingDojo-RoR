require_relative 'apple_tree'

RSpec.describe Apple_Tree do
  before :each do
    @at = Apple_Tree.new
  end
  describe '#initialize' do
    it "has a height and age when created" do
      expect(@at.height).to eq(0)
      expect(@at.age).to eq(0)
    end
  end
  describe '#apple_count' do
    it 'keeps track of how many apples are on the tree' do
      expect(@at.apple_count).to eq(0)
    end
  end
  describe '#year_gone_by' do
    it 'ages the tree 1 year, and grows it by 2 feet' do
      3.times {@at.year_gone_by}
      expect(@at.age).to eq(3)
      expect(@at.height).to eq(6)
    end
    it 'grows apples once it is 3 years old' do
      5.times {@at.year_gone_by}
      expect(@at.apple_count).to eq(20)
    end
    it 'stops growing apples after 10 years' do
      15.times {@at.year_gone_by}
      expect(@at.apple_count).to eq(70)
    end
  end
  describe '#pick_apples' do
    it 'removes all apples from the tree' do
      5.times {@at.year_gone_by}
      @at.pick_apples
      expect(@at.apple_count).to eq(0)
    end
  end

end
