class Array
    def two_sum 
        combination(2).filter { |pair| pair.reduce(:+) == 0 }.map do |pair|
            pair.map { |ele| index(ele) }
        end
    end
    
end

def my_uniq(array)
    res = []
    array.each { |ele| res << ele unless res.include?(ele) }
    res
end

def my_transpose(matrix)
    res = Array.new(matrix.length) { Array.new }
    (0...matrix.length).each do |i|
        matrix[i].each.with_index do |ele, j| 
            res[j] << ele
        end
    end
    res
end
