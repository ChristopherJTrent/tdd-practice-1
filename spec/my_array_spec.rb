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
end