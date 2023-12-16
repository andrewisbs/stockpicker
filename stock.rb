# function that takes in an array of integer values
# returns an array with two items, the two days that ar ethe best to buy the 'stock'
# eg stock_picker ([1,2,3,4,3,2,1])
# returns 0,3, profit of $3
def stock_picker(prices_array)
    # one, start with day one
    profit = 0
    highest = 0
    highest_index = 0
    lowest = 1000000
    lowest_index = 0
    second_lowest = 0
    second_lowest_index = 0
    i = 0
    while i < prices_array.length-1 do
        if lowest > prices_array[i]
                second_lowest = lowest
                second_lowest_index = lowest_index
                lowest = prices_array[i]
                lowest_index = i 
        end
        if lowest_index == prices_array.length-1
            lowest = second_lowest
            lowest_index  = second_lowest_index
        end
        i +=1
    end
    i = lowest_index
    while i < prices_array.length-1 do
        if highest < prices_array[i-1]
                highest = prices_array[i-1]
                highest_index = i - 1
        end
        i += 1
    end
    lowest = highest
    p return_array = [lowest_index, highest_index]
    return return_array
end
    
stock_picker([43,33,3,4,38,5,1])
    
    # then loop through twice, first time through find the lowest and second lowest number. 
    # if lowest number isn't the last number, we're gold, that's the one you want. if it is the last
    # hold on to second lowest number
    # error: if 0 to prices_arry length is just diminishing, return error message.

    # second time through, find highest number (error handling in first step should elimenate errors here)

    # step three, return the array points for the stock pick