class Array
    def my_uniq
        hash = Hash.new(0)
        self.each do |key|
            hash[key] += 1
        end
        hash.keys
    end

    def two_sum
        sum = []
        
        length.times do |i| 
            target = -self[i]
            idx = self.index(target) 
            if idx && self[idx] != 0 && idx > i  
                sum << [i, idx]
            end 
        end 
        sum
    end
   

end

def my_transpose(grid)
    row = grid.count
    new_grid = Array.new(row) { Array.new(row)}

    row.times do |i|
        row.times do |j|
            new_grid[j][i] = grid[i][j]
        end
    end
    new_grid
end

def stock_picker(prices)
    max = 0 
    arr = []
    prices.each_with_index do |buy, i|
        prices.each_with_index do |sell, j|
            if j > i && (sell - buy > max)
                arr = [i, j]
                max = sell - buy 
            end
        end
    end
    arr
end

# [9, 7, 1, 6 ,3]