require 'my_array'

describe 'my_array' do
    describe 'my_uniq' do
        it 'should accept a single array' do
            expect(my_uniq([])).to_not raise_error
        end
        it 'should return an array containing only unique values' do
            r1 = [1, 2, 1, 3, 3]
            r1_unique = [1, 2, 3]
            expect(my_uniq(r1)).to eq(r1_unique)
        end
    end
    describe 'Array#two_sum' do
        it 'finds all pairs of indices where the elements at those indices sum to zero' do 
            arr_1 = [-1, 0, 2, -2, 1]
            arr_1_two_sum = [[0, 4], [2, 3]]
            expect(arr_1.two_sum).to eq(arr_1_two_sum)
        end
    end 
    describe 'my_transpose' do
        it 'converts between row-oriented and column-oriented matrix representations' do
            matrix = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
            expect (my_transpose(matrix)).to eq(matrix.transpose)
        end
    end
end