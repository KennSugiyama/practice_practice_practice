require_relative "../orange"
require_relative "../orange_tree"


describe OrangeTree do
  let(:tree) { OrangeTree.new }
  let(:growth_rate) { 2.5 }
  let(:fruit_range) {(100..300)}
  let(:mature_age) { 6 }
  let(:age_limit) { 100 }

  describe "#age" do
    it "has an age" do
      expect(tree.age).to be_truthy
    end
  end

  describe "#height" do
    it "has a height" do
      expect(tree.height).to be_truthy
    end
  end


  describe "#pass_growing_season" do
    it "should change the age" do
      expect {tree.pass_growing_season}.to change {tree.age}
    end

    it "should make the tree grow" do
      expect {tree.pass_growing_season}.to change{tree.height}.by(growth_rate)
    end

    context "When the tree is old enough to bear fruit" do
      it "should cause the tree to produce oranges" do
        expect(tree.produce_fruit).to be_between(100, 300)
      end
    end
  end

  describe "#mature?" do
    it "returns true if tree is old enough to bear fruit" do
      tree.age = 6
      expect(tree.mature?).to be_truthy
    end

    it "returns false if tree is not old enough to bear fruit" do
      tree.age = 5
      expect(tree.mature?).to be_falsey
    end
  end

  describe "#dead?" do
    it "should return false for an alive tree" do
      tree.age = 1
      expect(tree.dead?).to be_falsey
    end

    it "should return true for a dead tree" do
      tree.age = 10000
      expect(tree.dead?).to be_truthy
    end
  end

  describe '#has_oranges?' do
    it 'should return true if oranges are on the tree' do
      tree.fruits << Orange.new
      expect(tree.has_oranges?).to be_truthy
    end

    it "should return false if the tree has no oranges" do
      expect(tree.has_oranges?).to be_falsey
    end
  end

  describe "#pick_an_orange" do
    it "should return an orange from the tree" do
      10.times { tree.fruits <<  Orange.new }
      expect(tree.pick_an_orange).to be_an_instance_of(Orange)
    end

    it "the returned orange should no longer be on the tree" do
      10.times { tree.fruits <<  Orange.new }
      tree.pick_an_orange
      expect(tree.fruits.count).to eq 9
    end

    it "should raise an error if the tree has no oranges" do
      expect{ tree.pick_an_orange } .to raise_error(OrangeTree::NoOrangesError)
    end
  end
end
