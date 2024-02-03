require 'towers_of_hanoi'

describe 'towers_of_hanoi' do
    subject(:towers) {TowersOfHanoi.new(5)}
    describe 'towers_of_hanoi#move' do
        context 'when given a pair of valid indices' do
            it 'should move a disk from one stack to another' do
                towers.move(0,1)
                expect(towers.storage).to eq([[5,4,3,2],[1],[]])
            end
        end

        context 'when given any invalid indices' do 
            it 'should throw an error when trying to remove a disc from an empty stack' do
                expect{towers.move(1,0)}.to raise_error(ArgumentError)
            end

            it 'should throw an error when trying to put a disk on top of a smaller disc' do
                towers.move(0,1)
                expect{towers.move(0,1)}.to raise_error(/on top/)
            end
        end
    end

    describe 'towers_of_hanoi#won?' do
        context 'when the tower on the right does not contain all elements' do
            it 'should return false' do
                expect(towers.won?).to eq(false)
            end
        end
        
        context 'when the tower on the right does contain all elements' do
            it 'should return true' do
                expect()
            end
        end
    end
end
