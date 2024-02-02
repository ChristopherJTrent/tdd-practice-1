require 'towers_of_hanoi'

describe 'towers_of_hanoi' do
    subject(:towers) {TowersOfHanoi.new(5)}
    describe 'towers_of_hanoi#move' do
        it 'should move a disk from one stack to another' do
            towers.move(0,1)
            expect(towers.storage).to eq([[5,4,3,2],[1],[]])
        end
    end
end
