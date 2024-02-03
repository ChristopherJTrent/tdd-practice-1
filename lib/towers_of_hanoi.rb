class TowersOfHanoi
    
    attr_reader :storage

    def initialize(size)
        @storage = [(1..size).to_a.reverse, [], []]
    end

    def move(source, target)
        raise ArgumentError if storage[source].length == 0

        if storage[target].length > 0 && storage[source].last > storage[target].last   
            raise 'cannot put large disc on top of smaller disc'
        end

        storage[target].push(storage[source].pop)
    end
end