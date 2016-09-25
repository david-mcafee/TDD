class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el if !result.include?(el)
    end
    result
  end

  def two_sum
    two_sum_array = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        if idx2 > idx1 && el1 + el2 == 0
          two_sum_array << [idx1, idx2]
        end
      end
    end
    two_sum_array
  end

  def my_transpose
    transposed_array = Array.new(self.length) {Array.new(self.length)}

    self.length.times do |num1|
      self.length.times do |num2|
        transposed_array[num1][num2] = self[num2][num1]
      end
    end

    transposed_array
  end
end

#
