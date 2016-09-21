require 'rspec'
require 'iteration_tdd'

describe "Array#" do
  let(:original_array) { [1, 2, 1, 3, 3]}


  describe "my_uniq" do

    it "should return new array (doesn't modify original)" do
      duplicate = original_array.dup
      duplicate.my_uniq

      expect(duplicate).to eq(original_array)
    end

    it "should return array of no repeated elements" do
      expect(original_array.my_uniq).to eq([1, 2, 3])
    end

    it "should return elements in order that they first appeared" do
      expect(original_array.my_uniq).not_to eq([2,1,3])
      expect(original_array.my_uniq).not_to eq([3,2,1])
      expect(original_array.my_uniq).not_to eq([3,1,2])
    end

  end

  describe "two_sum" do
    let(:two_sums_array) { [-1, 0, 2, -2, 1] }

    it "should only return pairs of indices that sum to zero" do
      expect(two_sums_array.two_sum).to eq([[0,4], [2,3]])
      expect(two_sums_array.two_sum.length).to eq(2)
    end

    it "should return indices and not numbers" do
      expect(two_sums_array.two_sum).not_to eq([[-1, 1], [2,-2]])
    end

    it "should return pairs that are sorted dictionary-wise" do
      expect(two_sums_array.two_sum).to eq([[0,4], [2,3]])
      expect(two_sums_array.two_sum).not_to eq([[2,3], [0,4]])
    end
  end

  describe "my_transpose" do
    let(:rows) {
      [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
    }
    let(:cols) {
      [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]
    }

    it "should transpose rows to columns" do
      expect(rows.my_transpose).to eq(cols)
    end
  end








end
