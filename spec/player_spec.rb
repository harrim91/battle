require 'player'

describe Player do

  let(:name){"Emmett"}
  subject(:player){described_class.new(name)}

  it "should returns the player's name" do
    expect(subject.name).to eq name
  end

end