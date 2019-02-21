require 'player'

describe Player do
    subject(:dave) { Player.new('Dave')}
    subject(:maria) { Player.new('Maria')}

      describe '#name' do
       it 'returns the name' do
         expect(dave.name).to eq('Dave')
      end
   end

   describe '#hitpoint' do
     it "returns the player's hitpoints" do
        expect(dave.hitpoints).to eq 60
      end
    end

    describe "#attack" do
      it "inflicts damage on the other player" do
        expect(dave).to receive(:damage)
          maria.attack(dave)
          # why does this have to happen after?
      end
    end

    describe '#damage' do
      it "reduces hitpoints by 10" do
        expect { dave.damage }.to change {dave.hitpoints}.by -10
    end
  end
end
