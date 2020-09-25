require "first_tdd"
require "rspec"

describe Array do 

    describe "#my_uniq" do
        it "removes duplicates from the array" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do
        it "two_sum" do 
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])
        end
    end

    describe "#my_transpose" do
        it "Transposes a 2-D array" do
            matrix = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
            expect(my_transpose(matrix)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
        end
    end

    describe "#stock_picker" do 
        it "picks the maximum profit pair" do 
            price = [9, 7, 1, 6, 3] 
            expect(stock_picker(price)).to eq([2, 3])
        end
    end
end

