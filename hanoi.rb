class Hanoi
    attr_reader :arr
    def initialize
        @arr = [[3,2 ,1],[],[]]#[[3,2,1],[],[]] => [[1,2][][3]] => [[2],[],[1,3]]=> 
       
    end

    def play
        until won?
            puts "Enter an start index: "
            start_idx = gets.chomp.to_i
            puts "Enter an ending index: "
            end_idx = gets.chomp.to_i

            # move_valid?(start_idx, end_idx)
            # move(start_idx, end_idx)

        end
    end

    def move(start_idx, end_idx)
        # [3,2,1]=> if arr[start][i] > [start][i+1] 
        # i = 0
        raise "You can't move from a pile that is empty!" if arr[start_idx].empty?
        raise "Can't place bigger disk on smaller disk!" if !arr[end_idx].empty? && arr[end_idx].first < arr[start_idx].first
        disc = arr[start_idx].shift
        arr[end_idx].unshift(disc)

        arr
    end

    def won?
        return @arr.one? do |subarr|
             subarr == subarr.sort
        end  
        
    end
end