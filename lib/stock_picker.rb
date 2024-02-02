def stock_picker(array)
    # [0,1,2,3,4,5,6,7,8,9,10] as values
    # [0,10] as indices to return
    largest_found = -100000000
    largest_indices = []
    (0...array.length).each do |buy_index|
        # this is an iterator starting after buy_index, going to the end of the array
        array[buy_index+1..].each.with_index do |ele, sell_index|
            if array[sell_index + buy_index] - array[buy_index] > largest_found
                largest_found = array[sell_index+buy_index] - array[buy_index]
                largest_indices = [buy_index, sell_index + buy_index +1]
            end
        end
    end
    largest_indices
end