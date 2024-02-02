require 'stock_picker'

describe 'stock_picker' do
    it 'should accept an array of stock prices' do
        expect{ stock_picker([]) }.to_not raise_error
    end

    context 'when given an array of stock prices' do
        it 'should output the most profitable pair of days to buy and sell' do
            prices = (0..10).to_a
            expect(stock_picker(prices)).to eq([0,10])
        end
    end
end
