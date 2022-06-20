def stock_picker stocks
    return puts "Not enough info" if stocks.count<2
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

    if profit==0
        puts "It's not worth to sell. Keep your stocks and wait for a rise on prices"
        puts "Best price to buy is #{stocks.min}, at day #{stocks.index(stocks.min)+1}"

    else
        min = max-profit
        puts "Best price to buy is #{min}, at day #{stocks.index(min)+1}" 
        puts "Best price to sell is #{max}, at day #{stocks.index(max)+1}"
        puts "Profit is #{max-min}"
    end
    
end

    # stock_list = [5,9,11,3,8,6,17,2]
    stock_list = [11,5,4,3]

    stock_picker stock_list

