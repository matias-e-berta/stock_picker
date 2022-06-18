def stock_picker stocks
    return "Not enough info" if stocks.count<2
    min = stocks[0]
    max = 0
    profit = 0
    stocks.each do |stock|
        if profit<stock-min
            profit = stock-min
            max = stock
        end
        if stock<min
            min = stock
        end
        
    end
    min = max-profit
    puts "Best price to buy is #{min}, at day #{stocks.index(min)+1}" 
    puts "Best price to sell is #{max}, at day #{stocks.index(max)+1}"
    puts "Profit is #{max-min}"
end

    stock_list = [5,9,11,3,18,6,17,2]

    stock_picker stock_list

