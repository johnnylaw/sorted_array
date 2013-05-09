require 'rspec'
require './sorted_array.rb'

describe SortedArray do
  describe '#bsearch' do
    context 'when array has an even number of values' do
      before do
        @arr = SortedArray.new [1,2,3,4,5,6]
      end
      
      it 'finds and return a value in the array' do
        @arr.bsearch(3).should == 3
      end
      
      it 'returns nil if the value is less than the smallest value in the array' do
        @arr.bsearch(0).should be_nil
      end

      it 'returns nil if the value is greater than the largest value in the array' do
        @arr.bsearch(7).should be_nil
      end
    end
    
    context 'when array has an odd number of values' do
      before do
        @arr = SortedArray.new [1,2,3,4,5]
      end
      
      it 'finds and return a value in the array' do
        @arr.bsearch(3).should == 3
      end
      
      it 'returns nil if the value is less than the smallest value in the array' do
        @arr.bsearch(0).should be_nil
      end

      it 'returns nil if the value is greater than the largest value in the array' do
        @arr.bsearch(6).should be_nil
      end
    end
    
    context 'when array has only one value' do
      before do
        @arr = SortedArray.new [55]
      end
      
      it 'finds and return a value in the array' do
        @arr.bsearch(55).should == 55
      end
      
      it 'returns nil if the value is less than the value in the array' do
        @arr.bsearch(0).should be_nil
      end

      it 'returns nil if the value is greater than the value in the array' do
        @arr.bsearch(100).should be_nil
      end
    end
    
    context 'when array is empty' do
      it 'returns nil' do
        SortedArray.new.bsearch(5).should be_nil
      end
    end
  end
end