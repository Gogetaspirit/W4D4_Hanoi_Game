require "hanoi"
require "rspec"
#[[3,2,1],[],[]] => [] [] []->>> [1,2,3]
describe Hanoi do
   subject(:hanoi) { Hanoi.new }
   
    describe "#move" do       
        it "moves the smallerdiscs from the top" do
            expect(hanoi.move(0, 2)).to eq([[2, 1],[],[3]]) #
        end
        
        it "raise error if the pile is empty." do
            expect {hanoi.move(1, 2) }.to raise_error("You can't move from a pile that is empty!")
        end

        it "cant place bigger disk on smaller disk" do
            hanoi.move(0, 2) #[][][1,2,3]]
            expect { hanoi.move(2, 0) }.to raise_error("Can't place bigger disk on smaller disk!")
        end
    end



    describe "#won?" do
      
        it "two piles should be empty" do
               
            # hanoi.move(0, 1)
            hanoi.move(0, 2)
            hanoi.move(0, 2)
            hanoi.move(0, 2)
            # hanoi.move(1, 2)
            # hanoi.move(0, 1)
            # hanoi.move(2, 0)
            # hanoi.move(2, 1)
            # hanoi.move(0, 1)
            expect(hanoi.won?).to eq(true)
        end

    end
end    

